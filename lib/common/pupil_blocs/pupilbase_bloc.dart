import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:schooldata_hub_client/common/classes/pupil.dart';
import 'package:schooldata_hub_client/common/classes/pupil_base.dart';
import 'package:schooldata_hub_client/common/pupil_blocs/pupilbase_event.dart';
import 'package:schooldata_hub_client/common/pupil_blocs/pupilbase_state.dart';
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'package:schooldata_hub_client/common/utils/secure_storage.dart';
import 'package:schooldata_hub_client/features/login/classes/session_model.dart';

class PupilBaseBloc extends Bloc<PupilBaseEvent, PupilBaseState> {
  List<PupilBase> _storedPupilBase = <PupilBase>[];
  List<Pupil> _fetchedPupils = <Pupil>[];
  final List<Pupil> _matchedPupils = <Pupil>[];
  PupilBaseBloc() : super(const PupilBaseInitialState()) {
    on<PupilBaseEvent>((event, emit) async {
      //- Case Start Event:
      // When the app starts it should check if there is a PupilBase in storage
      if (event is PupilBaseStartEvent) {
        final bool pupilBaseExists =
            await secureStorage.containsKey(key: 'pupilBase');
        if (pupilBaseExists == true) {
          Debug().info('PupilBase found');
          final String? storedPupilBaseAsString =
              await secureStorageRead('pupilBase');
          Debug().info('stored string $storedPupilBaseAsString');
          final List storedPupilBase =
              jsonDecode(storedPupilBaseAsString!) as List;

          _storedPupilBase = storedPupilBase
              .map((e) => PupilBase.fromJson(e as Map<String, dynamic>))
              .toList();

          Debug().info('Random Stored pupil ${_storedPupilBase[0].firstName}');
          emit(PupilBaseLoadedState(pupilBaseResult: _storedPupilBase));
        } else {}
      }

      //- Case add PupilBase from QR:
      if (event is PupilBaseImportEvent) {
        try {
          final String? scanResult = event.scannedResponse;
          if (scanResult == "-1") {
            Debug().info('Scan result: scanAborted');
          }
          if (scanResult != null) {
            Debug().info('Scan result: $scanResult');

            // The '***' flag is to ensure that this is our pupilbase qr, otherwise it will give an error
            if (scanResult.substring(0, 3) != '***') {
              Debug().error('Scan result is not a PupilBase QR: $scanResult');
            }

            // Let's take the '***' out of the string
            final String pupilBaseRaw = scanResult.substring(3);

            // The pupils in the string are separated by a '#' - let's split them out
            final List<String> splittedPupils = pupilBaseRaw.split('#');
            Debug().info('splitted pupilBases are $splittedPupils');

            // The properties are separated by commas, let's build the pupilbase objects with them
            final scannedPupilBase = splittedPupils
                .map(
                  (element) => PupilBase(
                    id: int.parse(element.split(',')[0]),
                    firstName: element.split(',')[1],
                    lastName: element.split(',')[2],
                    schoolyear: element.split(',')[3],
                    group: element.split(',')[4],
                    language: element.split(',')[5],
                  ),
                )
                .toList();
            // If the pupilBases are not already stored, it will add them
            for (final PupilBase newPupilBase in scannedPupilBase) {
              if (_storedPupilBase
                  .where((element) => element.id == newPupilBase.id)
                  .isEmpty) {
                _storedPupilBase.add(newPupilBase);
              }
            }
            //Write the result to storage
            await secureStorageWrite('pupilBase', jsonEncode(_storedPupilBase));
            emit(PupilBaseLoadedState(pupilBaseResult: _storedPupilBase));
          }
        } catch (e) {
          // TODO: error description
          emit(const PupilBaseErrorState(message: 'Etwas hat nicht geklappt'));
        }
      }

      if (event is PupilBaseRemoveEvent) {
        if (_storedPupilBase
            .where((element) => element.id == event.pupilBase.id)
            .isEmpty) {
          _storedPupilBase.remove(event.pupilBase);
          //Write the result to storage
          await secureStorageWrite('pupilBase', jsonEncode(_storedPupilBase));
        }
      }
    });

    on<PupilBaseLoadedEvent>((event, emit) async {
      final String? storedSession = await secureStorageRead('session');
      Debug().warning('Session found! $storedSession');
      final session = Session.fromJson(
        json.decode(storedSession!) as Map<String, dynamic>,
      );
      final String token = session.token!;
      final List idsToFetch = [];
      for (final PupilBase pupilBase in _storedPupilBase) {
        idsToFetch.add(pupilBase.id);
      }
      final requestBody = jsonEncode(<String, dynamic>{"pupils": idsToFetch});
      Debug().success('requestBody is $requestBody');
      try {
        final response = await http.post(
          Uri.parse('https://daten.medien-sandkasten.de/api/pupil/list'),
          headers: {"x-access-token": token.toString()},
          body: requestBody,
        );
        Debug().info('Request sent!');

        if (response.statusCode == 200) {
          Debug().info('Response: ${response.body.toString()}');

          final List decodedResponse = json.decode(response.body) as List;
          _fetchedPupils = decodedResponse
              .map((e) => Pupil.fromJson(e as Map<String, dynamic>))
              .toList();
          for (final PupilBase pupilBaseElement in _storedPupilBase) {
            if (_fetchedPupils
                .where((element) => element.internalId == pupilBaseElement.id)
                .isNotEmpty) {
              final Pupil pupilMatch = _fetchedPupils
                  .where((element) => element.internalId == pupilBaseElement.id)
                  .single;
              _matchedPupils.add(
                pupilMatch.copyWith(
                  firstName: pupilBaseElement.firstName,
                  lastName: pupilBaseElement.lastName,
                  group: pupilBaseElement.group,
                  schoolyear: pupilBaseElement.schoolyear,
                  language: pupilBaseElement.language,
                ),
              );
            }
          }
          emit(PupilBaseFetchedState(pupilResult: _fetchedPupils));
        } else {
          if (response.statusCode == 401) {
            Debug().info('Response: ${response.body.toString()}');
            Debug().info('ERROR 401');
            final decodedResponse =
                json.decode(response.body) as Map<String, dynamic>;
            final String message = decodedResponse['message'] as String;
            emit(PupilBaseErrorState(message: message));
          } else {}
        }
      } catch (e) {
        Debug().info('This error is catched!');
        emit(PupilBaseErrorState(message: 'ERROR $e'));
      }
    });
  }
}

import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schooldata_hub_client/common/classes/pupil_base.dart';
import 'package:schooldata_hub_client/common/pupil_blocs/pupilbase_event.dart';
import 'package:schooldata_hub_client/common/pupil_blocs/pupilbase_state.dart';
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'package:schooldata_hub_client/common/utils/secure_storage.dart';

class PupilBaseBloc extends Bloc<PupilBaseEvent, PupilBaseState> {
  final List<PupilBase> _storedPupilBase = <PupilBase>[];
  PupilBaseBloc() : super(const PupilBaseInitialState()) {
    on<PupilBaseEvent>((event, emit) async {
      //- Case Start Event:
      // When the app starts it should check if there is a PupilBase in storage
      if (event is PupilBaseStartEvent) {
        final bool pupilBaseExists =
            await secureStorage.containsKey(key: 'pupilBase');
        if (pupilBaseExists == true) {
          final String? storedPupilBaseAsString =
              await secureStorageRead('pupilBase');
          final List<PupilBase> storedPupilBase =
              jsonDecode(storedPupilBaseAsString!) as List<PupilBase>;
          for (final storedPupil in storedPupilBase) {
            _storedPupilBase.add(storedPupil);
          }
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
            if (scanResult!.substring(0, 3) != '***') {
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
  }
}

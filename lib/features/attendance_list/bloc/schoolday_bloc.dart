import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'package:schooldata_hub_client/common/utils/extensions.dart';
import 'package:schooldata_hub_client/common/utils/secure_storage.dart';
import 'package:schooldata_hub_client/features/attendance_list/bloc/schoolday_event.dart';
import 'package:schooldata_hub_client/features/attendance_list/bloc/schoolday_state.dart';
import 'package:schooldata_hub_client/features/attendance_list/classes/schoolday_model.dart';
import 'package:schooldata_hub_client/features/login/classes/session_model.dart';

class SchooldayBloc extends Bloc<SchooldayEvent, SchooldayState> {
  List<Schoolday> _schooldays = <Schoolday>[];

  SchooldayBloc() : super(const SchooldayInitialState()) {
    on<SchooldayStartEvent>(
      (event, emit) {
        emit(const SchooldayLoadingState());
      },
    );
    on<SchooldayLoadingEvent>(
      (event, emit) async {
        Debug().warning('Schoolday Bloc triggered');
        emit(const SchooldayLoadingState());
        final String? storedSession = await secureStorageRead('session');
        Debug().warning('Session found! $storedSession');
        final session = Session.fromJson(
          json.decode(storedSession!) as Map<String, dynamic>,
        );
        final String token = session.token!;

        try {
          final response = await http.get(
            Uri.parse('https://daten.medien-sandkasten.de/api/schoolday/only'),
            headers: {"x-access-token": token.toString()},
          );
          Debug().info('Request sent!');

          if (response.statusCode == 200) {
            Debug().info('Response: ${response.body.toString()}');

            final List decodedResponse = json.decode(response.body) as List;
            _schooldays = decodedResponse
                .map((e) => Schoolday.fromJson(e as Map<String, dynamic>))
                .toList();

            Debug().warning('Session stored! $_schooldays');
            emit(SchooldayLoadedState(schooldayResult: _schooldays));
          } else {
            if (response.statusCode == 401) {
              Debug().info('Response: ${response.body.toString()}');
              Debug().info('ERROR 401');
              final decodedResponse =
                  json.decode(response.body) as Map<String, dynamic>;
              final String message = decodedResponse['message'] as String;
              emit(SchooldayErrorState(message: message));
            } else {}
          }
        } catch (e) {
          Debug().info('This error is catched!');
          emit(SchooldayErrorState(message: 'ERROR $e'));
        }
      },
    );
    on<SchooldayLoadedEvent>(
      (event, emit) {
        if (state.selectedDate == null) {
          final closestSchooldayToNow = _schooldays.reduce(
            (value, element) =>
                value.schoolday.difference(DateTime.now()).abs() <
                        element.schoolday.difference(DateTime.now()).abs()
                    ? value
                    : element,
          );
          final DateTime selectedDate = closestSchooldayToNow.schoolday;
          Debug().success('thisDateProvider: ${selectedDate.formatForUser()}');
          emit(
            SchooldaySelectedDateState(
              newSelectedDate: selectedDate,
            ),
          );
        }
      },
    );
    on<SchooldaySelectedDateEvent>(
      (event, emit) {
        emit(
          SchooldaySelectedDateState(
            newSelectedDate: event.selectedDate,
          ),
        );
      },

      // emit(SchooldayLoadedState.)
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schooldata_hub_client/common/pupil_blocs/pupilbase_bloc.dart';
import 'package:schooldata_hub_client/common/pupil_blocs/pupilbase_event.dart';
import 'package:schooldata_hub_client/common/pupil_blocs/pupilbase_state.dart';

import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'package:schooldata_hub_client/common/utils/scanner.dart';
import 'package:schooldata_hub_client/common/widgets/snackbar.dart';

class AttendanceListScreen extends StatelessWidget {
  const AttendanceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pupilBaseBloc = BlocProvider.of<PupilBaseBloc>(context);
    return BlocBuilder(
      bloc: pupilBaseBloc,
      builder: (context, PupilBaseState pupilBaseState) {
        return Scaffold(
          body: Center(
            child: ElevatedButton(
                onPressed: () async {
                  Debug().info('Button pressed!!');
                  final String? scanResponse = await scanner(context);
                  if (scanResponse != null) {
                    pupilBaseBloc.add(
                        PupilBaseImportEvent(scannedResponse: scanResponse));
                  } else {
                    snackbarWarning(context, 'Scanvorgang abgebrochen');
                  }
                },
                child: const Text('scan') // () => getPupilBase(pupilBaseList),
                ),
          ),
        );
      },
    );
  }
}

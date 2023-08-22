import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schooldata_hub_client/common/utils/debug_printer.dart';
import 'package:schooldata_hub_client/common/utils/scanner.dart';
import 'package:schooldata_hub_client/common/widgets/snackbar.dart';
import 'package:schooldata_hub_client/features/attendance_list/bloc/schoolday_bloc.dart';
import 'package:schooldata_hub_client/features/auth/bloc/auth_bloc.dart';
import 'package:schooldata_hub_client/features/pupilbase/bloc/pupilbase_bloc.dart';

class AttendanceListScreen extends StatelessWidget {
  const AttendanceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pupilBaseBloc = BlocProvider.of<PupilBaseBloc>(context);
    final authBloc = BlocProvider.of<AuthBloc>(context);
    final schooldayBloc = BlocProvider.of<SchooldayBloc>(context);

    return BlocBuilder(
      bloc: pupilBaseBloc,
      builder: (context, PupilBaseState state) {
        if (state is PupilBaseLoadedState) {
          context.read<PupilBaseBloc>().add(const PupilBaseLoadedEvent());
        }
        if (state is PupilBaseFetchedState) {
          return Scaffold(
            body: ListView.builder(
              itemCount: state.pupilResult.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    '${state.pupilResult[index].firstName} ${state.pupilResult[index].lastName}',
                  ),
                );
              },
            ),
          );
        } else {
          return Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () async {
                  Debug.info('Button pressed!!');
                  final String? scanResponse = await scanner(context);
                  if (scanResponse != null) {
                    pupilBaseBloc.add(
                      PupilBaseImportEvent(scannedResponse: scanResponse),
                    );
                  } else {
                    if (context.mounted) {
                      snackbarWarning(context, 'Scanvorgang abgebrochen');
                    }
                  }
                },
                child: const Text(
                  'Scan pupil IDs to see data',
                ) // () => getPupilBase(pupilBaseList),
                ,
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => authBloc.add(const SignOutEvent()),
            ),
          );
        }
      },
    );
  }
}

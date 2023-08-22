part of 'pupilbase_bloc.dart';

class PupilBaseErrorState extends PupilBaseState {
  final String message;
  const PupilBaseErrorState({required this.message}) : super();
}

class PupilBaseFetchedState extends PupilBaseState {
  final List<Pupil> pupilResult;
  const PupilBaseFetchedState({required this.pupilResult}) : super();
}

class PupilBaseInitialState extends PupilBaseState {
  const PupilBaseInitialState() : super();
}

class PupilBaseLoadedState extends PupilBaseState {
  final List<PupilBase> pupilBaseResult;
  const PupilBaseLoadedState({required this.pupilBaseResult}) : super();
}

class PupilBaseLoadingState extends PupilBaseState {
  const PupilBaseLoadingState() : super();
}

@immutable
abstract class PupilBaseState {
  const PupilBaseState();
}

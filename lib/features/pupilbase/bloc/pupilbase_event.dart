part of 'pupilbase_bloc.dart';

class PupilBaseClearEvent extends PupilBaseEvent {
  const PupilBaseClearEvent();
}

@immutable
abstract class PupilBaseEvent {
  const PupilBaseEvent();
}

class PupilBaseImportEvent extends PupilBaseEvent {
  final String? scannedResponse;
  const PupilBaseImportEvent({required this.scannedResponse});
}

class PupilBaseLoadedEvent extends PupilBaseEvent {
  const PupilBaseLoadedEvent();
}

class PupilBaseLoadEvent extends PupilBaseEvent {
  const PupilBaseLoadEvent();
}

class PupilBaseRemoveEvent extends PupilBaseEvent {
  final PupilBase pupilBase;
  const PupilBaseRemoveEvent({required this.pupilBase});
}

class PupilBaseStartEvent extends PupilBaseEvent {
  const PupilBaseStartEvent();
}

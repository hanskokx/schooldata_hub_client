import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:schooldata_hub_client/common/classes/pupil_base.dart';

@immutable
abstract class PupilBaseEvent extends Equatable {
  const PupilBaseEvent();
  @override
  List<Object> get props => [];
}

class PupilBaseStartEvent extends PupilBaseEvent {
  const PupilBaseStartEvent();
}

class PupilBaseImportEvent extends PupilBaseEvent {
  final String? scannedResponse;
  const PupilBaseImportEvent({required this.scannedResponse});
}

class PupilBaseLoadEvent extends PupilBaseEvent {
  const PupilBaseLoadEvent();
}

class PupilBaseLoadedEvent extends PupilBaseEvent {
  const PupilBaseLoadedEvent();
}

class PupilBaseRemoveEvent extends PupilBaseEvent {
  final PupilBase pupilBase;
  const PupilBaseRemoveEvent({required this.pupilBase});
}

class PupilBaseClearEvent extends PupilBaseEvent {
  const PupilBaseClearEvent();
}

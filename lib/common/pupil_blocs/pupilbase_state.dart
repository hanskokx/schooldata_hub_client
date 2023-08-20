import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:schooldata_hub_client/common/classes/pupil_base.dart';

@immutable
abstract class PupilBaseState extends Equatable {
  const PupilBaseState();
  @override
  List<Object> get props => [];
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

class PupilBaseErrorState extends PupilBaseState {
  final String message;
  const PupilBaseErrorState({required this.message}) : super();
}

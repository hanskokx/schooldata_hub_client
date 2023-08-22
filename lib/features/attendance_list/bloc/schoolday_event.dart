part of 'schoolday_bloc.dart';

@immutable
abstract class SchooldayEvent {
  const SchooldayEvent();
}

class SchooldayLoadedEvent extends SchooldayEvent {
  const SchooldayLoadedEvent();
}

class SchooldayLoadingEvent extends SchooldayEvent {
  const SchooldayLoadingEvent();
}

class SchooldaySelectedDateEvent extends SchooldayEvent {
  final DateTime selectedDate;
  const SchooldaySelectedDateEvent({
    required this.selectedDate,
  });
}

class SchooldayStartEvent extends SchooldayEvent {
  const SchooldayStartEvent();
}

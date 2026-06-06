part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.initial() = _Initial;

  const factory ScheduleState.loading() = _Loading;

  const factory ScheduleState.loaded(
    List<ScheduleListItem> schedules,
  ) = _Loaded;

  const factory ScheduleState.success(String message) =
      _Success;

  const factory ScheduleState.error(String message) = _Error;
}
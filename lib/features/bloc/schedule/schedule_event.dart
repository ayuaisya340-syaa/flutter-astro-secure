part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.getSchedules() = _GetSchedules;

  const factory ScheduleEvent.createSchedule(
    ScheduleRequestModel data,
  ) = _CreateSchedule;

  const factory ScheduleEvent.updateSchedule({
    required int id,
    required ScheduleRequestModel data,
  }) = _UpdateSchedule;

  const factory ScheduleEvent.deleteSchedule(int id) =
      _DeleteSchedule;
}
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:reminder_kelompok/data/datasource/schedule_remote_datasource.dart';
import 'package:reminder_kelompok/data/model/request/schedule_request_model.dart';
import 'package:reminder_kelompok/data/model/response/schedule_list_response.dart';

part 'schedule_event.dart';
part 'schedule_state.dart';
part 'schedule_bloc.freezed.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final ScheduleRemoteDatasource remoteDatasource;

  ScheduleBloc(this.remoteDatasource)
      : super(const ScheduleState.initial()) {
    on<_GetSchedules>(_onGetSchedules);
    on<_CreateSchedule>(_onCreateSchedule);
    on<_UpdateSchedule>(_onUpdateSchedule);
    on<_DeleteSchedule>(_onDeleteSchedule);
  }

  // GET ALL
  Future<void> _onGetSchedules(
    _GetSchedules event,
    Emitter<ScheduleState> emit,
  ) async {
    emit(const ScheduleState.loading());

    final result = await remoteDatasource.getSchedules();

    result.fold(
      (error) {
        emit(ScheduleState.error(error));
      },
      (data) {
        emit(ScheduleState.loaded(data.data ?? []));
      },
    );
  }

  // CREATE
  Future<void> _onCreateSchedule(
    _CreateSchedule event,
    Emitter<ScheduleState> emit,
  ) async {
    emit(const ScheduleState.loading());

    final result =
        await remoteDatasource.createSchedule(event.data);

    result.fold(
      (error) {
        emit(ScheduleState.error(error));
      },
      (_) {
        add(const ScheduleEvent.getSchedules());
        emit(const ScheduleState.success("Schedule created"));
      },
    );
  }

  // UPDATE
  Future<void> _onUpdateSchedule(
    _UpdateSchedule event,
    Emitter<ScheduleState> emit,
  ) async {
    emit(const ScheduleState.loading());

    final result = await remoteDatasource.updateSchedule(
      event.id,
      event.data,
    );

    result.fold(
      (error) {
        emit(ScheduleState.error(error));
      },
      (_) {
        add(const ScheduleEvent.getSchedules());
        emit(const ScheduleState.success("Schedule updated"));
      },
    );
  }

  // DELETE
  Future<void> _onDeleteSchedule(
    _DeleteSchedule event,
    Emitter<ScheduleState> emit,
  ) async {
    emit(const ScheduleState.loading());

    final result =
        await remoteDatasource.deleteSchedule(event.id);

    result.fold(
      (error) {
        emit(ScheduleState.error(error));
      },
      (_) {
        add(const ScheduleEvent.getSchedules());
        emit(const ScheduleState.success("Schedule deleted"));
      },
    );
  }
}
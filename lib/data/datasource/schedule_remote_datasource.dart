import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'package:reminder_kelompok/core/constants/variable.dart';
import 'package:reminder_kelompok/data/datasource/auth_local_datasource.dart';
import 'package:reminder_kelompok/data/model/request/schedule_request_model.dart';
import 'package:reminder_kelompok/data/model/response/schedule_list_response.dart';
import 'package:reminder_kelompok/data/model/response/schedule_response_model.dart';

class ScheduleRemoteDatasource {
  /// GET ALL SCHEDULES
  Future<Either<String, ScheduleListResponseModel>> getSchedules() async {
    final authData = await AuthLocalDatasource().getAuthData();

    final response = await http.get(
      Uri.parse('${Variable.baseUrl}/api/schedules'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.token}',
      },
    );

    if (response.statusCode == 200) {
      return Right(
        ScheduleListResponseModel.fromJson(jsonDecode(response.body)),
      );
    } else {
      return Left(response.body);
    }
  }

  /// CREATE SCHEDULE
  Future<Either<String, ScheduleResponseModel>> createSchedule(
    ScheduleRequestModel data,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();

    final response = await http.post(
      Uri.parse('${Variable.baseUrl}/api/schedules'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.token}',
      },
      body: jsonEncode(data.toJson()),
    );

    if (response.statusCode == 201 || response.statusCode == 200) {
      return Right(
        ScheduleResponseModel.fromJson(jsonDecode(response.body)),
      );
    } else {
      return Left(response.body);
    }
  }

  /// UPDATE SCHEDULE
  Future<Either<String, ScheduleResponseModel>> updateSchedule(
    int id,
    ScheduleRequestModel data,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();

    final response = await http.put(
      Uri.parse('${Variable.baseUrl}/api/schedules/$id'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.token}',
      },
      body: jsonEncode(data.toJson()),
    );

    if (response.statusCode == 200) {
      return Right(
        ScheduleResponseModel.fromJson(jsonDecode(response.body)),
      );
    } else {
      return Left(response.body);
    }
  }

  /// DELETE SCHEDULE
  Future<Either<String, String>> deleteSchedule(int id) async {
    final authData = await AuthLocalDatasource().getAuthData();

    final response = await http.delete(
      Uri.parse('${Variable.baseUrl}/api/schedules/$id'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.token}',
      },
    );

    if (response.statusCode == 200) {
      return Right('Schedule berhasil dihapus');
    } else {
      return Left(response.body);
    }
  }
}
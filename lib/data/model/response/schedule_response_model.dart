import 'dart:convert';

class ScheduleResponseModel {
    final String? message;
    final Data? data;

    ScheduleResponseModel({
        this.message,
        this.data,
    });

    factory ScheduleResponseModel.fromJson(String str) => ScheduleResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ScheduleResponseModel.fromMap(Map<String, dynamic> json) => ScheduleResponseModel(
        message: json["message"],
        data: json["data"] != null ? Data.fromMap(json["data"]) : null,
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": data?.toMap(),
    };
}

class Data {
    final int? userId;
    final String? title;
    final String? description;
    final String? startTime;
    final bool? isActive;
    final int? scheduleId;

    Data({
        this.userId,
        this.title,
        this.description,
        this.startTime,
        this.isActive,
        this.scheduleId,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        userId: json["user_id"],
        title: json["title"],
        description: json["description"],
        startTime: json["start_time"],
        isActive: json["is_active"],
        scheduleId: json["schedule_id"],
    );

    Map<String, dynamic> toMap() => {
        "user_id": userId,
        "title": title,
        "description": description,
        "start_time": startTime,
        "is_active": isActive,
        "schedule_id": scheduleId,
    };
}

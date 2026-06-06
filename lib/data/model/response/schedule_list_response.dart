import 'dart:convert';

class ScheduleListResponseModel {
    final String? message;
    final List<ScheduleListItem>? data;

    ScheduleListResponseModel({
        this.message,
        this.data,
    });

    factory ScheduleListResponseModel.fromJson(String str) => ScheduleListResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ScheduleListResponseModel.fromMap(Map<String, dynamic> json) => ScheduleListResponseModel(
        message: json["message"],
        data: json["data"] != null ? List<ScheduleListItem>.from(json["data"].map((x) => ScheduleListItem.fromMap(x))) : null,
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "data": data?.map((x) => x.toMap()).toList(),
    };
}

class ScheduleListItem {
    final int? scheduleId;
    final int? userId;
    final String? title;
    final String? description;
    final String? startTime;
    final bool? isActive;
    final String? createdAt;

    ScheduleListItem({
        this.scheduleId,
        this.userId,
        this.title,
        this.description,
        this.startTime,
        this.isActive,
        this.createdAt,
    });

    factory ScheduleListItem.fromMap(Map<String, dynamic> json) => ScheduleListItem(
        scheduleId: json["schedule_id"],
        userId: json["user_id"],
        title: json["title"],
        description: json["description"],
        startTime: json["start_time"],
        isActive: json["is_active"],
        createdAt: json["created_at"],
    );

    Map<String, dynamic> toMap() => {
        "schedule_id": scheduleId,
        "user_id": userId,
        "title": title,
        "description": description,
        "start_time": startTime,
        "is_active": isActive,
        "created_at": createdAt,
    };
}

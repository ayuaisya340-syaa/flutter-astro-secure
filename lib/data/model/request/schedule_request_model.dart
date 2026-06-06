import 'dart:convert';

class ScheduleRequestModel {
    final String title;
    final String description;
    final String startTime;

    ScheduleRequestModel({
        required this.title,
        required this.description,
        required this.startTime,
    });

    factory ScheduleRequestModel.fromJson(String str) => ScheduleRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ScheduleRequestModel.fromMap(Map<String, dynamic> json) => ScheduleRequestModel(
        title: json["title"],
        description: json["description"],
        startTime: json["start_time"],
    );

    Map<String, dynamic> toMap() => {
        "title": title,
        "description": description,
        "start_time": startTime,
    };
}

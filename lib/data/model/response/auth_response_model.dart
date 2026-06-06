import 'dart:convert';

class AuthResponseModel {
    final String? message;
    final String? token;
    final User? user;

    AuthResponseModel({
        this.message,
        this.token,
        this.user,
    });

    factory AuthResponseModel.fromJson(String str) => AuthResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AuthResponseModel.fromMap(Map<String, dynamic> json) => AuthResponseModel(
        message: json["message"],
        token: json["token"],
        user: json["user"] != null ? User.fromMap(json["user"]) : null,
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "token": token,
        "user": user?.toMap(),
    };
}

class User {
    final int? id;
    final String? name;
    final String email;
    final String? accountType;
    final dynamic parentId;
    final String? createdAt;
    final String? updatedAt;

    User({
        this.id,
        this.name,
        required this.email,
        this.accountType,
        this.parentId,
        this.createdAt,
        this.updatedAt,
    });

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        accountType: json["account_type"],
        parentId: json["parent_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "account_type": accountType,
        "parent_id": parentId,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}

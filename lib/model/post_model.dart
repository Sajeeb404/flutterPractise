

import 'dart:convert';

UserPostmodel userPostmodelFromJson(String str) => UserPostmodel.fromJson(json.decode(str));
List<UserPostmodel> postModel(String str) => List<UserPostmodel>.from(json.decode(str).map((x) => UserPostmodel.fromJson(x)));

String userPostmodelToJson(UserPostmodel data) => json.encode(data.toJson());

class UserPostmodel {
  int? id;
  String? title;
  String? body;

  UserPostmodel({
    this.id,
    this.title,
    this.body,
  });

  factory UserPostmodel.fromJson(Map<String, dynamic> json) => UserPostmodel(
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "body": body,
  };
}

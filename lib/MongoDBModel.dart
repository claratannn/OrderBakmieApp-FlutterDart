import 'package:mongo_dart/mongo_dart.dart';
import 'dart:convert';

MongoDbModel mongoDbModelFromJson(String str) =>
    MongoDbModel.fromJson(json.decode(str));

String mongoDbModelToJson(MongoDbModel data) => json.encode(data.toJson());

class MongoDbModel {
  MongoDbModel({
    required this.id,
    required this.email,
    required this.password,
    required this.address,
    required this.phonenum,
  });

  ObjectId id;
  String email;
  String password;
  String address;
  String phonenum;

  factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(
        id: json["_id"],
        email: json["email"],
        password: json["password"],
        address: json["address"],
        phonenum: json["phonenum"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "email": email,
        "password": password,
        "address": address,
        "phonenum": phonenum,
      };
}

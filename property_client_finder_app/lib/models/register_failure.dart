// To parse this JSON data, do
//
//     final registerFailure = registerFailureFromJson(jsonString);

import 'dart:convert';

RegisterFailure registerFailureFromJson(String str) =>
    RegisterFailure.fromJson(json.decode(str));

String registerFailureToJson(RegisterFailure data) =>
    json.encode(data.toJson());

class RegisterFailure {
  RegisterFailure({
    required this.errors,
  });

  List<Error> errors;

  factory RegisterFailure.fromJson(Map<String, dynamic> json) =>
      RegisterFailure(
        errors: List<Error>.from(json["errors"].map((x) => Error.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "errors": List<dynamic>.from(errors.map((x) => x.toJson())),
      };
}

class Error {
  Error({
    required this.message,
  });

  String message;

  factory Error.fromJson(Map<String, dynamic> json) => Error(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}

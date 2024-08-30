// To parse this JSON data, do
//
//     final rate = rateFromJson(jsonString);

import 'dart:convert';

Rate rateFromJson(String str) => Rate.fromJson(json.decode(str));

String rateToJson(Rate data) => json.encode(data.toJson());

class Rate {
    String? message;

    Rate({
        this.message,
    });

    factory Rate.fromJson(Map<String, dynamic> json) => Rate(
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
    };
}

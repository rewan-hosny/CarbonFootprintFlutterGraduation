
import 'dart:convert';
RegisterResponseModel registerResponseModel (String str)
=> RegisterResponseModel.fromJson(json.decode(str));



class RegisterResponseModel {
  String? message;
  String? token;

  RegisterResponseModel({this.message, this.token});

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['token'] = this.token;
    return data;
  }
}


import 'dart:convert';
RememberMeResponseModel rememberMeResponseModel (String str)
=> RememberMeResponseModel.fromJson(json.decode(str));


class RememberMeResponseModel {
  String? status;
  String? sessionToken;

  RememberMeResponseModel({this.status, this.sessionToken});

  RememberMeResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    sessionToken = json['session_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    data['session_token'] = this.sessionToken;
    return data;
  }
}
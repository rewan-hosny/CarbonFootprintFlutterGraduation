import 'dart:convert';
LogoutResponseModel logoutResponseModel (String str) => LogoutResponseModel.fromJson(json.decode(str));




class LogoutResponseModel {
  String? status;

  LogoutResponseModel({this.status});

  LogoutResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    return data;
  }
}

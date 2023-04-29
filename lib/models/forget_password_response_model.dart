import 'dart:convert';
ForgetPasswordResponseModel forgetPasswordResponseModel (String str) => ForgetPasswordResponseModel.fromJson(json.decode(str));

class ForgetPasswordResponseModel {
  String? status;

  ForgetPasswordResponseModel({this.status});

  ForgetPasswordResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    return data;
  }
}

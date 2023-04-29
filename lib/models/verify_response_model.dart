


import 'dart:convert';
VerifyResponseModel verifyResponseModel (String str)
=> VerifyResponseModel.fromJson(json.decode(str));



class VerifyResponseModel {
  String? status;

  VerifyResponseModel({this.status});

  VerifyResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    return data;
  }
}


import 'dart:convert';
UploadProfileImageResponse uploadProfileImageResponse (String str)
=> UploadProfileImageResponse.fromJson(json.decode(str));



class UploadProfileImageResponse {
  String? status;

  UploadProfileImageResponse({this.status});

  UploadProfileImageResponse.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    return data;
  }
}
//
//mlmol
//hgr

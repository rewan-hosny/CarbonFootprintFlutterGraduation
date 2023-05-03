
import 'dart:convert';
StaffUploadTempResponseModel staffUploadTempResponseModel (String str)
=> StaffUploadTempResponseModel.fromJson(json.decode(str));

class StaffUploadTempResponseModel {
  String? status;

  StaffUploadTempResponseModel({this.status});

  StaffUploadTempResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    return data;
  }
}
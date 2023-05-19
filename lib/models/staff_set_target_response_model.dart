import 'dart:convert';
StaffSetTargetResponseModel staffSetTargetResponseModel (String str)
=> StaffSetTargetResponseModel.fromJson(json.decode(str));




class StaffSetTargetResponseModel {
  String? status;

  StaffSetTargetResponseModel({this.status});

  StaffSetTargetResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    return data;
  }
}

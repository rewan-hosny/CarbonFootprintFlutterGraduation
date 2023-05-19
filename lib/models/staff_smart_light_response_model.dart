
import 'dart:convert';
StaffSmartLightResponseModel staffSmartLightResponseModel (String str)
=> StaffSmartLightResponseModel.fromJson(json.decode(str));




class StaffSmartLightResponseModel {
  double? reducedFootprint;

  StaffSmartLightResponseModel({this.reducedFootprint});

  StaffSmartLightResponseModel.fromJson(Map<String, dynamic> json) {
    reducedFootprint = json['reduced_footprint'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reduced_footprint'] = this.reducedFootprint;
    return data;
  }
}

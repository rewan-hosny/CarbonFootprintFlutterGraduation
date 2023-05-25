
import 'dart:convert';
ScanPlantResponseModel scanPlantResponseModel (String str) => ScanPlantResponseModel.fromJson(json.decode(str));

class ScanPlantResponseModel {
  String? status;
  String? damaged;

  ScanPlantResponseModel({this.status, this.damaged});

  ScanPlantResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    damaged = json['Damaged'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    data['Damaged'] = this.damaged;
    return data;
  }
}

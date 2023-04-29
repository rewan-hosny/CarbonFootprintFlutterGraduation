
import 'dart:convert';
ScanPlantResponseModel scanPlantResponseModel (String str) => ScanPlantResponseModel.fromJson(json.decode(str));




class ScanPlantResponseModel {
  String? flowerType;
  String? status;

  ScanPlantResponseModel({this.flowerType, this.status});

  ScanPlantResponseModel.fromJson(Map<String, dynamic> json) {
    flowerType = json['Flower Type'];
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Flower Type'] = this.flowerType;
    data['Status'] = this.status;
    return data;
  }
}

import 'dart:convert';
CalculateCarbonResponseModel calculateCarbonResponseModel (String str) => CalculateCarbonResponseModel.fromJson(json.decode(str));



class CalculateCarbonResponseModel {
  String? status;
  double? carbonEmission;

  CalculateCarbonResponseModel({this.status, this.carbonEmission});

  CalculateCarbonResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    carbonEmission = json['Carbon_Emission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    data['Carbon_Emission'] = this.carbonEmission;
    return data;
  }
}

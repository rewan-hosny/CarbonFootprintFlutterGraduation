import 'dart:convert';
StaffGetTargetResponseModel staffGetTargetResponseModel (String str)
=> StaffGetTargetResponseModel.fromJson(json.decode(str));

class StaffGetTargetResponseModel {
  String? status;
  int? target;
  int? year;
  double? predictionEmission;

  StaffGetTargetResponseModel({this.status, this.target, this.year, this.predictionEmission});

  StaffGetTargetResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    target = json['Target'];
    year = json['Year'];
    predictionEmission = json['Prediction Emission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    data['Target'] = this.target;
    data['Year'] = this.year;
    data['Prediction Emission'] = this.predictionEmission;
    return data;
  }
}


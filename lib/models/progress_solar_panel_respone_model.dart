


import 'dart:convert';
SolarProgressResponseModel solarProgressResponseModel (String str)
=> SolarProgressResponseModel.fromJson(json.decode(str));






class SolarProgressResponseModel {
  String? status;
  double? targetPercent; // Changed the type to num
  String? progress;

  SolarProgressResponseModel({this.status, this.targetPercent , this.progress});

  SolarProgressResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    progress = json['progress'];
    if (json['Target Percent'] is int) {
      targetPercent = (json['Target Percent'] as int).toDouble();
    } else if (json['Target Percent'] is double) {
      targetPercent = json['Target Percent'];
    } else {
      targetPercent = null;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    data['Target Percent'] = this.targetPercent;
    data['progress'] = this.progress;
    return data;
  }
}

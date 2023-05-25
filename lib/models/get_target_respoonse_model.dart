import 'dart:convert';
GetTargetResponseModel getTargetResponseModel (String str) => GetTargetResponseModel.fromJson(json.decode(str));

class GetTargetResponseModel {
  String? status;
  int? target;
  int? year;
  double? predictionEmission;
  double? targetPercent;

  GetTargetResponseModel(
      {this.status,
        this.target,
        this.year,
        this.predictionEmission,
        this.targetPercent});

  GetTargetResponseModel.fromJson(Map<String, dynamic> json) {
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
    data['Target Percent'] = this.targetPercent;
    return data;
  }
}

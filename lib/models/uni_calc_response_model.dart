
import 'dart:convert';

UniCalcResponseModel uniCalcResponseModel (String str)
=> UniCalcResponseModel.fromJson(json.decode(str));


class UniCalcResponseModel {
  String? status;
  double? carbonEmission;

  UniCalcResponseModel({this.status, this.carbonEmission});

  UniCalcResponseModel.fromJson(Map<String, dynamic> json) {
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

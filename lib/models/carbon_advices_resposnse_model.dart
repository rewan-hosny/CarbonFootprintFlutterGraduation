
import 'dart:convert';
CarbonAdvicesResposnseModel carbonAdvicesResposnseModel (String str) => CarbonAdvicesResposnseModel.fromJson(json.decode(str));




class CarbonAdvicesResposnseModel {
  String? largestEmissionType;
  List<String>? advices;

  CarbonAdvicesResposnseModel({this.largestEmissionType, this.advices});

  CarbonAdvicesResposnseModel.fromJson(Map<String, dynamic> json) {
    largestEmissionType = json['Largest Emission Type'];
    advices = json['advices'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Largest Emission Type'] = this.largestEmissionType;
    data['advices'] = this.advices;
    return data;
  }
}

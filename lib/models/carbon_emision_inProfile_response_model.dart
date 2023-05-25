
import 'dart:convert';
CarbonEmissionInProfile carbonEmissionInProfile (String str) => CarbonEmissionInProfile.fromJson(json.decode(str));

class CarbonEmissionInProfile {
  String? maxValue;
  double? totalCarbon;

  CarbonEmissionInProfile({this.maxValue, this.totalCarbon});

  CarbonEmissionInProfile.fromJson(Map<String, dynamic> json) {
    maxValue = json['Max Value'];
    totalCarbon = json['Total Carbon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Max Value'] = this.maxValue;
    data['Total Carbon'] = this.totalCarbon;
    return data;
  }
}

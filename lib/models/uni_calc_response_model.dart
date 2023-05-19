
import 'dart:convert';

UniCalcResponseModel uniCalcResponseModel (String str)
=> UniCalcResponseModel.fromJson(json.decode(str));

class UniCalcResponseModel {
  String? status;
  double? carbonEmission;
  LargestValues? largestValues;

  UniCalcResponseModel({this.status, this.carbonEmission, this.largestValues});

  UniCalcResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    carbonEmission = json['Carbon_Emission'];
    largestValues = json['Largest_Values'] != null ? new LargestValues.fromJson(json['Largest_Values']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    data['Carbon_Emission'] = this.carbonEmission;
    if (this.largestValues != null) {
      data['Largest_Values'] = this.largestValues!.toJson();
    }
    return data;
  }
}

class LargestValues {
  Map<String, dynamic>? data;

  LargestValues({this.data});

  LargestValues.fromJson(Map<String, dynamic> json) {
    data = Map<String, dynamic>.from(json);
  }

  Map<String, dynamic> toJson() {
    return Map<String, dynamic>.from(data!);
  }
}

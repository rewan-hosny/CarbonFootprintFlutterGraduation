
import 'dart:convert';
StaffTrainTempResponseModel staffTrainTempResponseModel (String str)
=> StaffTrainTempResponseModel.fromJson(json.decode(str));


class StaffTrainTempResponseModel {
  String? status;
  Result? result;

  StaffTrainTempResponseModel({this.status, this.result});

  StaffTrainTempResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    result =
    json['Result'] != null ? new Result.fromJson(json['Result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    if (this.result != null) {
      data['Result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  Map<String, dynamic>? data;

  Result({this.data});

  Result.fromJson(Map<String, dynamic> json) {
    data = Map<String, dynamic>.from(json);
  }

  Map<String, dynamic> toJson() {
    return Map<String, dynamic>.from(data!);
  }
}

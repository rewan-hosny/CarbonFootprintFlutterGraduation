
import 'dart:convert';
StaffUploadTempResponseModel staffUploadTempResponseModel (String str)
=> StaffUploadTempResponseModel.fromJson(json.decode(str));


class StaffUploadTempResponseModel {
  String? message;
  Result? result;

  StaffUploadTempResponseModel({this.message, this.result});

  StaffUploadTempResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
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

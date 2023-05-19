import 'dart:convert';
import 'dart:io';
StaffHomeResonseModel staffHomeResonseModel (String str)
=> StaffHomeResonseModel.fromJson(json.decode(str));

class StaffHomeResonseModel {
  String? status;
  Year? year;


  StaffHomeResonseModel({this.status, this.year});

  StaffHomeResonseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    year =
    json['Year'] != null ? new Year.fromJson(json['Year']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    if (this.year != null) {
      data['Year'] = this.year!.toJson();
    }
    return data;
  }
}

class Year {
  Map<String, dynamic>? data;

  Year({this.data});

  Year.fromJson(Map<String, dynamic> json) {
    data = Map<String, dynamic>.from(json);
  }

  Map<String, dynamic> toJson() {
    return Map<String, dynamic>.from(data!);
  }
}

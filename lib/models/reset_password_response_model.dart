

import 'dart:convert';
ResetPasswordResponseModel resetPasswordResponseModel (String str)
=> ResetPasswordResponseModel.fromJson(json.decode(str));


class ResetPasswordResponseModel {
  String? Success;

  ResetPasswordResponseModel({this.Success});

  ResetPasswordResponseModel.fromJson(Map<String, dynamic> json) {
    Success = json['Success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Success'] = this.Success;
    return data;
  }
}

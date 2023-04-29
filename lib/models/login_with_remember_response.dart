import 'dart:convert';



LoginWithRememberMeResponseModel loginWithRememberMeResponseModel (String str)
=> LoginWithRememberMeResponseModel.fromJson(json.decode(str));


class LoginWithRememberMeResponseModel {
  String? token;
  String? rememberToken;

  LoginWithRememberMeResponseModel({this.token, this.rememberToken});

  LoginWithRememberMeResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    rememberToken = json['remember_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['remember_token'] = this.rememberToken;
    return data;
  }
}


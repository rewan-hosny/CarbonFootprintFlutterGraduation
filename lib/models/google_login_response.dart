import 'dart:convert';
GoogleLoginResponse googleResponseModel (String str) => GoogleLoginResponse.fromJson(json.decode(str));

class GoogleLoginResponse {
  String? status;
  String? token;

  GoogleLoginResponse({this.status, this.token});

  GoogleLoginResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['token'] = this.token;
    return data;
  }
}

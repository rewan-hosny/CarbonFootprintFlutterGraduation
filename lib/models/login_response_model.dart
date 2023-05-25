 import 'dart:convert';
LoginResponseModel loginResponseModel (String str) => LoginResponseModel.fromJson(json.decode(str));
//
// class LoginResponseModel {
//   String? token;
//
//   LoginResponseModel({this.token});
//
//   LoginResponseModel.fromJson(Map<String, dynamic> json) {
//     token = json['token'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['token'] = this.token;
//     return data;
//   }
// }

 class LoginResponseModel {
   String? token;
   String? rememberToken;
   String? firstTime;

   LoginResponseModel({this.token, this.rememberToken, this.firstTime});

   LoginResponseModel.fromJson(Map<String, dynamic> json) {
     token = json['token'];
     rememberToken = json['remember_token'];
     firstTime = json['first_time'];
   }

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = new Map<String, dynamic>();
     data['token'] = this.token;
     data['remember_token'] = this.rememberToken;
     data['first_time'] = this.firstTime;
     return data;
   }
 }


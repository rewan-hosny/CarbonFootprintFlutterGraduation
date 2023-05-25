// class LoginRequestModel {
//   String? email;
//   String? password;
//
//   LoginRequestModel({this.email, this.password});
//
//   LoginRequestModel.fromJson(Map<String, dynamic> json) {
//     email = json['email'];
//     password = json['password'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['email'] = this.email;
//     data['password'] = this.password;
//     return data;
//   }
// }

class LoginRequestModel {
  String? email;
  String? password;
  String? rememberMe;

  LoginRequestModel({this.email, this.password, this.rememberMe});

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    rememberMe = json['remember_me'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['remember_me'] = this.rememberMe;
    return data;
  }
}


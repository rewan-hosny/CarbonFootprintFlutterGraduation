class LoginWithRememberMeRequestModel {
  String? email;
  String? password;
  String? rememberMe;

  LoginWithRememberMeRequestModel({this.email, this.password, this.rememberMe});

  LoginWithRememberMeRequestModel.fromJson(Map<String, dynamic> json) {
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

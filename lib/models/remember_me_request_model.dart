class RememberMeRequestModel {
  String? rememberToken;

  RememberMeRequestModel({this.rememberToken});

  RememberMeRequestModel.fromJson(Map<String, dynamic> json) {
    rememberToken = json['remember_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['remember_token'] = this.rememberToken;
    return data;
  }
}
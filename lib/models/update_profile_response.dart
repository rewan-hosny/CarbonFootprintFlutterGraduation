import 'dart:convert';

UpdateProfileResponse updateProfileResponse (String str)
=> UpdateProfileResponse.fromJson(json.decode(str));

// class UpdateProfileResponse {
//   String? status;
//
//   UpdateProfileResponse({this.status});
//
//   UpdateProfileResponse.fromJson(Map<String, dynamic> json) {
//     status = json['Status'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['Status'] = this.status;
//     return data;
//   }
// }


class UpdateProfileResponse {
  String? status;

  UpdateProfileResponse({this.status});

  UpdateProfileResponse.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    return data;
  }
}

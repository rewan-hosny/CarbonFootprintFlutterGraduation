import 'dart:convert';
import 'dart:io';
StaffGetAdminResonse staffGetAdminResonse (String str)
=> StaffGetAdminResonse.fromJson(json.decode(str));


class StaffGetAdminResonse {
  String? gender;
  String? publicId;
  String? email;
  int? nationalId;
  String? university;
  String? firstName;
  Null? image;
  String? lastName;
  int? phoneNum;

  StaffGetAdminResonse(
      {this.gender,
        this.publicId,
        this.email,
        this.nationalId,
        this.university,
        this.firstName,
        this.image,
        this.lastName,
        this.phoneNum});

  StaffGetAdminResonse.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    publicId = json['public_id'];
    email = json['email'];
    nationalId = json['national_id'];
    university = json['university'];
    firstName = json['first_name'];
    image = json['image'];
    lastName = json['last_name'];
    phoneNum = json['phone_num'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gender'] = this.gender;
    data['public_id'] = this.publicId;
    data['email'] = this.email;
    data['national_id'] = this.nationalId;
    data['university'] = this.university;
    data['first_name'] = this.firstName;
    data['image'] = this.image;
    data['last_name'] = this.lastName;
    data['phone_num'] = this.phoneNum;
    return data;
  }
}

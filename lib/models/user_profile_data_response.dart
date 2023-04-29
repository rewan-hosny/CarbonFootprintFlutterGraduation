import 'dart:convert';
import 'dart:io';
UserProfileDataResponse userProfileDataResponse (String str)
=> UserProfileDataResponse.fromJson(json.decode(str));


class UserProfileDataResponse {

  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? college;
  String? university;
  String? gender;
  String? image ;
  String?publicId;
  Null? nonce;

  UserProfileDataResponse(
      {

        this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.college,
        this.university,
        this.gender,
        this.image,
        this.publicId,
        this.nonce

      });

  UserProfileDataResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    college = json['college'];
    university = json['university'];
    gender = json['gender'];
    image = json['image'];
    publicId = json['public_id'];
    nonce = json['nonce'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['college'] = this.college;
    data['university'] = this.university;
    data['gender'] = this.gender;
    data['image'] = this.image;
    data['publicId'] = this.publicId;
    data['nonce'] = this.nonce;
    return data;
  }
}

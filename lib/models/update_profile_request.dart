
// class UpdateProfileRequest {
//   String? password;
//   String? firstName;
//   String? lastName;
//   String? college;
//   String? university;
//   String? gender;
//   String? email;
//
//   UpdateProfileRequest(
//       {this.password,
//         this.firstName,
//         this.lastName,
//         this.college,
//         this.university,
//         this.gender,
//         this.email});
//
//   UpdateProfileRequest.fromJson(Map<String, dynamic> json) {
//     password = json['password'];
//     firstName = json['first_name'];
//     lastName = json['last_name'];
//     college = json['college'];
//     university = json['university'];
//     gender = json['gender'];
//     email = json['email'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['password'] = this.password;
//     data['first_name'] = this.firstName;
//     data['last_name'] = this.lastName;
//     data['college'] = this.college;
//     data['university'] = this.university;
//     data['gender'] = this.gender;
//     data['email'] = this.email;
//     return data;
//   }
// }

class UpdateProfileRequest {
  String? password;
  String? firstName;
  String? lastName;
  String? college;
  String? university;
  String? gender;
  String? email;

  UpdateProfileRequest(
      {this.password,
        this.firstName,
        this.lastName,
        this.college,
        this.university,
        this.gender,
        this.email});

  UpdateProfileRequest.fromJson(Map<String, dynamic> json) {
    password = json['password'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    college = json['college'];
    university = json['university'];
    gender = json['gender'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(password != null)data['password'] = this.password;
    print("password in model");
    print(password);
    if(firstName != null)data['first_name'] = this.firstName;
    if(lastName != null)data['last_name'] = this.lastName;
    print("last name in model");
    print(lastName);
    if(college != null)data['college'] = this.college;
    if(university != null)data['university'] = this.university;
    if(gender != null)data['gender'] = this.gender;
    if(email != null)data['email'] = this.email;
    print("email in model");
    print(email);
    return data;
  }

}

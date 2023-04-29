class RegisterRequestModel {
  String? first_name;
  String? last_name;
  String? college;
  String? university;
  String? gender;
  String? email;
  String? password;


  RegisterRequestModel(
      {this.first_name,
        this.last_name,
        this.college,
        this.university,
        this.gender,
        this.email,
        this.password,


      });

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    first_name = json['first_name'];
    last_name = json['last_name'];
    college = json['college'];
    university = json['university'];
    gender = json['gender'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>() ;
    if(first_name != null)data['first_name'] = this.first_name ;
    if(last_name != null)data['last_name'] = this.last_name ;
    if(college != null)data['college'] = this.college ;
    if(university != null)data['university'] = this.university ;
    if(gender != null)data['gender'] = this.gender ;
    if(email != null)data['email'] = this.email ;
    if(password != null)data['password'] = this.password ;
    return data;
  }
}

class GetAllUsersModel {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? college;
  String? university;
  String? gender;
  int? carbonEm;

  GetAllUsersModel(
      {this.id,
        this.firstName,
        this.lastName,
        this.email,
        this.college,
        this.university,
        this.gender,
        this.carbonEm});

  GetAllUsersModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    college = json['college'];
    university = json['university'];
    gender = json['gender'];
    carbonEm = json['carbon_em'];
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
    data['carbon_em'] = this.carbonEm;
    return data;
  }
}

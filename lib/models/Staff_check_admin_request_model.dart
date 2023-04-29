class StaffCheckAdmin {
  bool? isAdmin;

  StaffCheckAdmin({this.isAdmin});

  StaffCheckAdmin.fromJson(Map<String, dynamic> json) {
    isAdmin = json['is_admin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_admin'] = this.isAdmin;
    return data;
  }
}
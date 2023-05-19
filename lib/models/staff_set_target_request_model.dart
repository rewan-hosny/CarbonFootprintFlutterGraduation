class StaffSetTargetRequestModel {
  int? target;
  int? year;

  StaffSetTargetRequestModel({this.target, this.year});

  StaffSetTargetRequestModel.fromJson(Map<String, dynamic> json) {
    target = json['target'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['target'] = this.target;
    data['year'] = this.year;
    return data;
  }
}

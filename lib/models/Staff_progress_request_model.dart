class StaffProgressResponseModel {
  bool? progress;
  bool? add;

  StaffProgressResponseModel({this.progress, this.add});

  StaffProgressResponseModel.fromJson(Map<String, dynamic> json) {
    progress = json['progress'];
    add = json['add'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['progress'] = this.progress;
    data['add'] = this.add;
    return data;
  }
}
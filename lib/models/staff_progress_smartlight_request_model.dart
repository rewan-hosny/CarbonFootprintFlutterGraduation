class StaffSmartLightProgressRequestModel {
  bool? progress;
  bool? add;

  StaffSmartLightProgressRequestModel({this.progress, this.add});

  StaffSmartLightProgressRequestModel.fromJson(Map<String, dynamic> json) {
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
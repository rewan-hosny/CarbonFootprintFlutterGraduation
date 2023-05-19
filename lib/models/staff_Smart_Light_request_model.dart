class StaffSmartLightRequestModel {
  int? totalConsumption;

  StaffSmartLightRequestModel({this.totalConsumption});

  StaffSmartLightRequestModel.fromJson(Map<String, dynamic> json) {
    totalConsumption = json['total_consumption'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_consumption'] = this.totalConsumption;
    return data;
  }
}

class PredectionRequestModel {
  String? start;
  String? end;

  PredectionRequestModel({this.start, this.end});

  PredectionRequestModel.fromJson(Map<String, dynamic> json) {
    start = json['start'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start'] = this.start;
    data['end'] = this.end;
    return data;
  }
}

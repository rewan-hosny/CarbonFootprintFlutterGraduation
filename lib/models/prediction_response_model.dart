
import 'dart:convert';
PredictionResponseModel predictionResponseModel (String str)
=> PredictionResponseModel.fromJson(json.decode(str));


class PredictionResponseModel {
  String? status;
  Result? result;
  String? highest;
  String? highestCarb;
  String? lowest;
  String? lowestCarb;

  PredictionResponseModel(
      {this.status,
        this.result,
        this.highest,
        this.highestCarb,
        this.lowest,
        this.lowestCarb});

  PredictionResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    result =
    json['Result'] != null ? new Result.fromJson(json['Result']) : null;
    highest = json['Highest'];
    highestCarb = json['HighestCarb'];
    lowest = json['Lowest'];
    lowestCarb = json['LowestCarb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    if (this.result != null) {
      data['Result'] = this.result!.toJson();
    }
    data['Highest'] = this.highest;
    data['HighestCarb'] = this.highestCarb;
    data['Lowest'] = this.lowest;
    data['LowestCarb'] = this.lowestCarb;
    return data;
  }
}

class Result {
  String? s2010;
  String? s2011;
  String? s2012;
  String? s2013;
  String? s2014;
  String? s2015;
  String? s2016;
  String? s2017;
  String? s2018;
  String? s2019;
  String? s2020;
  String? s2021;
  String? s2022;
  String? s2023;

  Result(
      {this.s2010,
        this.s2011,
        this.s2012,
        this.s2013,
        this.s2014,
        this.s2015,
        this.s2016,
        this.s2017,
        this.s2018,
        this.s2019,
        this.s2020,
        this.s2021,
        this.s2022,
        this.s2023});

  Result.fromJson(Map<String, dynamic> json) {
    s2010 = json['2010'];
    s2011 = json['2011'];
    s2012 = json['2012'];
    s2013 = json['2013'];
    s2014 = json['2014'];
    s2015 = json['2015'];
    s2016 = json['2016'];
    s2017 = json['2017'];
    s2018 = json['2018'];
    s2019 = json['2019'];
    s2020 = json['2020'];
    s2021 = json['2021'];
    s2022 = json['2022'];
    s2023 = json['2023'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['2010'] = this.s2010;
    data['2011'] = this.s2011;
    data['2012'] = this.s2012;
    data['2013'] = this.s2013;
    data['2014'] = this.s2014;
    data['2015'] = this.s2015;
    data['2016'] = this.s2016;
    data['2017'] = this.s2017;
    data['2018'] = this.s2018;
    data['2019'] = this.s2019;
    data['2020'] = this.s2020;
    data['2021'] = this.s2021;
    data['2022'] = this.s2022;
    data['2023'] = this.s2023;
    return data;
  }
}

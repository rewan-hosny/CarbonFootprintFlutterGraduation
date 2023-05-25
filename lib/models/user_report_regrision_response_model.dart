
import 'dart:convert';

import 'package:graduation/screens/user_regression/user_regression.dart';
UserRegressionResponseReport userRegressionResponseReport (String str)
=> UserRegressionResponseReport.fromJson(json.decode(str));


class UserRegressionResponseReport {

  Result? result;

  UserRegressionResponseReport({ this.result});

  UserRegressionResponseReport.fromJson(Map<String, dynamic> json) {

    result =
    json['Result'] != null ? new Result.fromJson(json['Result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.result != null) {
      data['Result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  Map<String, dynamic>? data;

  Result({this.data});

  Result.fromJson(Map<String, dynamic> json) {
    data = Map<String, dynamic>.from(json);
  }

  Map<String, dynamic> toJson() {
    return Map<String, dynamic>.from(data!);
  }
}

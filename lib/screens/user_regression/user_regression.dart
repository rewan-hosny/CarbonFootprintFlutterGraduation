import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../user_regression/components/body.dart';


class UserRegressionScreen extends StatelessWidget {
  static String routeName="/user_regression";

  const UserRegressionScreen({Key? key, required this.dates}) : super(key: key);
  final Map<String,dynamic> dates;
  @override
  Widget build(BuildContext context) {
  final dateStrings = dates.map((key, value) => MapEntry(key, value.toString()));
    return Scaffold(
      body: Body(dates:dateStrings),
    );
  }
}

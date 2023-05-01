import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../staff_regression_page/components/body.dart';


class StuffRegressionScreen extends StatelessWidget {
  static String routeName="/stuff_regression";
  final Map<String,dynamic> dates;
  const StuffRegressionScreen({Key? key, required this.dates}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateStrings = dates.map((key, value) => MapEntry(key, value.toString()));
    return Scaffold(
      body: Body(dates: dateStrings),
    );
  }
}

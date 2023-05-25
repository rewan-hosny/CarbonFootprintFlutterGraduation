import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Staff_Report_Regression/components/body.dart';

class StaffReportRgressionScreen extends StatefulWidget {
  static String routeName="/Staff_Report_Regression";
  const StaffReportRgressionScreen({Key? key, required this.dates}) : super(key: key);
  final Map<String,dynamic> dates;

  @override
  State<StaffReportRgressionScreen> createState() => _StaffReportRgressionScreenState();
}

class _StaffReportRgressionScreenState extends State<StaffReportRgressionScreen> {
  @override
  Widget build(BuildContext context) {
    final dateStrings = widget.dates.map((key, value) => MapEntry(key, value.toString()));
    return Scaffold(
      body: Body(dates:dateStrings),
    );;
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../regression2_page/components/body.dart';

class Regression2Screen extends StatelessWidget {
  static String routeName="/regression2_screen";
  final Map<String,String> dates;
  const Regression2Screen({Key? key, required this.dates}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(dates: dates,),
    );
  }
}

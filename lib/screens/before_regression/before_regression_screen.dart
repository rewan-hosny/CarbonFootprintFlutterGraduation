import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../before_regression/components/body.dart';

class BeforeRegressionScreen extends StatelessWidget {
  static String routeName="/before_regression_screen";
  const BeforeRegressionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
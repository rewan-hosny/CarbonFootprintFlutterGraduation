import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../staff_before_regression/components/body.dart';

class StaffBeforeRegression extends StatelessWidget {
  static String routeName="/Staff_before_regression_screen";

  const StaffBeforeRegression({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

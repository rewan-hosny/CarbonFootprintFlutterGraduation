import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../Staff_Login2/components/body.dart';
class StaffLogin2 extends StatelessWidget {
  const StaffLogin2({Key? key}) : super(key: key);
  static String routeName="/Staff_Login2_Question";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Body(),);
  }
}

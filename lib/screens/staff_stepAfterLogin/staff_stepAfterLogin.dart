import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../staff_stepAfterLogin/components/body.dart';


class StaffStepAfterLogin extends StatelessWidget {
  static String routeName="/staff_after_login";
  const StaffStepAfterLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
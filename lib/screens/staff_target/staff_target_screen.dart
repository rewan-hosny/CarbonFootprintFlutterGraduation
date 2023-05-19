import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../staff_target/components/body.dart';

class StaffTargetScreen extends StatelessWidget {
  static String routeName="/staff_target_screen";
  const StaffTargetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
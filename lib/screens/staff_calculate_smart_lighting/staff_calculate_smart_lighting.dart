import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../staff_calculate_smart_lighting/components/body.dart';

class StaffCalculateSmartLightingScreen extends StatelessWidget {
  static String routeName="/staff_calculate_smart_lighting_screen";
  const StaffCalculateSmartLightingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
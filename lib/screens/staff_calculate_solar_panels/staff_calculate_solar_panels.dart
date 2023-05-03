import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../staff_calculate_solar_panels/components/body.dart';

class StaffCalculateSolarPanelsScreen extends StatelessWidget {
  static String routeName="/staff_calculate_solar_panels_screen";
  const StaffCalculateSolarPanelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../staff_electricity_project/components/body.dart';
class StaffElectricityScreen extends StatelessWidget {
  const StaffElectricityScreen({Key? key}) : super(key: key);
  static String routeName="/Staff_Electricity_Project";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

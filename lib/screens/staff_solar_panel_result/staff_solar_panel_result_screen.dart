import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../staff_solar_panel_result/components/body.dart';

class StaffSolarPanelsResultScreen extends StatelessWidget {
  static String routeName="/staff_solar_panels_result_screen";
  const StaffSolarPanelsResultScreen({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(data:data ,),
    );
  }
}
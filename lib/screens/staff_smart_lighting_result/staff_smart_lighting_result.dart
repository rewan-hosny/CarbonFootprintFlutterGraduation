import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../staff_smart_lighting_result/components/body.dart';

class StaffSmartLightingResultScreen extends StatelessWidget {
  static String routeName="/staff_smart_lighting_result_screen";
  const StaffSmartLightingResultScreen({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(
      body: Body(data :data ,),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/staff_result_target/staff_result_target_2.dart';

import '../../size_config.dart';
import '../staff_result_target/components/body.dart';
class StaffResultTargetScreen extends StatelessWidget {
  const StaffResultTargetScreen({Key? key, required this.data}) : super(key: key);
  static String routeName="/Staff_Result_Target";
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: StaffResultTarget2(data:data ,),
    );
  }
}

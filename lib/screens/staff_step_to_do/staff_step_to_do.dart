import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../staff_step_to_do/components/body.dart';


class StaffStepToDo extends StatelessWidget {
  static String routeName="/staff_step_to_do";
  const StaffStepToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
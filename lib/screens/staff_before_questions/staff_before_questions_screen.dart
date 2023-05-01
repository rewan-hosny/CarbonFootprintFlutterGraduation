import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../staff_before_questions/components/body.dart';


class StaffBeforeQuestionsScreen extends StatelessWidget {
  static String routeName="/staff_before_questions_screen";
  const StaffBeforeQuestionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
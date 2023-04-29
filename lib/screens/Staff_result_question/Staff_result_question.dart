import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../Staff_result_question/components/body.dart';

class StaffResultScreen extends StatelessWidget {
  const StaffResultScreen({Key? key, required this.answersData}) : super(key: key);
  static String routeName="/Staff_Result_Question";
  final Map<dynamic,dynamic> answersData ;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);


    return Scaffold(
      body: Body(answersData:answersData),

    );
  }
}
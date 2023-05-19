import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/uni_calc_response_model.dart';
import '../../size_config.dart';
import '../Staff_result_question/components/body.dart';

class StaffResultScreen extends StatelessWidget {
  const StaffResultScreen({Key? key, required this.answersData, this.largestValues}) : super(key: key);
  static String routeName="/Staff_Result_Question";
  final Map<dynamic,dynamic> answersData ;
  final LargestValues? largestValues;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);


    return Scaffold(
      body: Body(answersData:answersData,largestValues: largestValues,),

    );
  }
}
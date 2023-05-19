import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../advice_water/components/body.dart';

class AdviceWaterScreen extends StatelessWidget {
  static String routeName="/advice_water_screen";
  const AdviceWaterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
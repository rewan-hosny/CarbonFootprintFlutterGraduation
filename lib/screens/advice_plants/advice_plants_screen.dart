import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../advice_plants/components/body.dart';

class AdvicePlantsScreen extends StatelessWidget {
  static String routeName="/advice_plants_screen";
  const AdvicePlantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
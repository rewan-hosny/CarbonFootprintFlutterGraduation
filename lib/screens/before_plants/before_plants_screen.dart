import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../before_plants/components/body.dart';

class BeforePlantsScreen extends StatelessWidget {
  static String routeName="/before_plants_screen";
  const BeforePlantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
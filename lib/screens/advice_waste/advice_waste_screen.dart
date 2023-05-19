import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../advice_waste/components/body.dart';

class AdviceWasteScreen extends StatelessWidget {
  static String routeName="/advice_waste_screen";
  const AdviceWasteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
//import 'dart:html';
import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'package:graduation/screens/intro_questions/components/body.dart';

class IntroScreen extends StatelessWidget {
  static String routeName= "/intro_questions";
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

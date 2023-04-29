

import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'package:graduation/screens/home/components/body.dart';
class HomeScreen extends StatelessWidget {
  static String routeName="/home-screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

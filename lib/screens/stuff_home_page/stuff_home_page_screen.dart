import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../stuff_home_page/components/body.dart';

class StuffHomePageScreen extends StatelessWidget {
  static String routeName="/stuff_home_page_screen";
  const StuffHomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../size_config.dart';
import '../plant1_page/components/body.dart';

class Plant1Screen extends StatelessWidget {
  static String routeName="/plant1_screen";
  const Plant1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
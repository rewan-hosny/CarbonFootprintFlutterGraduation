import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';

import '../plant2_page/components/body.dart';

class Plant2Screen extends StatelessWidget {
  static String routeName="/plant2_screen";
  const Plant2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
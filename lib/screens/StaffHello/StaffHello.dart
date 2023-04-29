import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';

import '../StaffHello/components/body.dart';


class StaffHello extends StatelessWidget {
  static String routeName="/Staff_Hello_screen";
  const StaffHello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
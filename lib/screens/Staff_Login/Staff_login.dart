import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../Staff_Login/components/body.dart';

class StaffLogin extends StatelessWidget {
  const StaffLogin({Key? key}) : super(key: key);
  static String routeName="/Staff_Login_Question";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),

    );
  }
}

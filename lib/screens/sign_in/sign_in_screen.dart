import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';

import '../sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName ='/sign_in';

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body() ,


    );
  }
}

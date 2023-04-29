import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/sign_in/sign_in_screen.dart';
import '../screens/sign_up/sign_up_screen.dart';
import '../size_config.dart';

class RecieveOtp extends StatelessWidget {
  const RecieveOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Didn't recieve the OTP ? ",style: LightModeSmallTextStyle),
        GestureDetector(
            onTap:() {},
            child:
            Text("Resend",style: LogInTextStyle,)),

      ],
    );
  }
}

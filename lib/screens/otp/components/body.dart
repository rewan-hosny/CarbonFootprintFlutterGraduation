import 'package:flutter/material.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/components/recieve_otp.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/create_new_password/create_new_password_screen.dart';
import 'package:graduation/screens/forget_password/forget_password_screen.dart';
import 'package:graduation/screens/otp/components/otp_form.dart';
import 'package:graduation/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopBar(
                  text: "",
                  press: () {
                    Navigator.pushNamed(
                        context, ForgetPasswordScreen.routeName);
                  },
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.03,
                ),
                Align(
                  child: SvgPicture.asset(
                    "assets/new/otp.svg",
                    height: SizeConfig.screenHeight * .33,
                  ),
                  alignment: Alignment.topCenter,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
                ),
                Align(
                  child:
                      Text("Check your messages", style: LightModeHeadersStyle),
                  alignment: Alignment.topLeft,
                ),
                // Text("we have sent a code to your phone number,")
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Align(
                  child: RichText(
                    text: TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: LightModeSmallTextStyle,
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                'We have sent a code to your phone \nnumber, '),
                        TextSpan(text: ' please ', style: LogInTextStyle),
                        TextSpan(text: 'enter the code...'),
                      ],
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Align(
                  child: Text("OTP Verification", style: LightModeHeadersStyle),
                  alignment: Alignment.bottomCenter,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                OtpForm(),
                // SizedBox(height: SizeConfig.screenHeight*0.03),
                // DefaultButton(text: "Verify",press: (){
                //
                //   //execute some function
                //   //go to create new password
                //
                // },
                // ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                RecieveOtp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

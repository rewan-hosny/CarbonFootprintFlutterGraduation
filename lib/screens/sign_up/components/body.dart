import 'package:flutter/material.dart';
import 'package:graduation/components/already_have_account.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/screens/complete_profile/complete_profile_screen.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/sign_up/components/sign_up_form.dart';
import 'package:graduation/size_config.dart';
import 'package:graduation/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        // height: getProportionateScreenHeight(SizeConfig.screenHeight*0.4),
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(24)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TopBar(
                  text: "Create Your Profile ",
                  press: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SignUpForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                AlreadyHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

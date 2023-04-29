import 'package:flutter/material.dart';
import 'package:graduation/components/already_have_account.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/screens/complete_profile/components/complete_profile_form.dart';

import 'package:graduation/screens/sign_up/sign_up_screen.dart';
import 'package:graduation/size_config.dart';

import '../../../components/default_button.dart';

class Body extends StatelessWidget {
  final Map<String, String> firstSignUpScreenData;
  const Body({Key? key, required this.firstSignUpScreenData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Padding(
                padding: EdgeInsets.all(24),
                child: SingleChildScrollView(
                    child: Column(children: [
                  TopBar(
                    text: "Finish Your Profile",
                    press: () {
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
                  ),
                  CompleteProfileForm(
                      firstSignUpScreenData: firstSignUpScreenData),
                  AlreadyHaveAccount(),
                ])))));
  }
}

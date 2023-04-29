import 'package:flutter/material.dart';
import 'package:graduation/models/remember_me_request_model.dart';
import 'package:graduation/screens/otp/otp_screen.dart';
import 'package:graduation/services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import '../screens/contact_us/contact_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/home_page/home_page_screen.dart';
import '../screens/sign_in/sign_in_screen.dart';
import '../screens/sign_up/sign_up_screen.dart';
import '../size_config.dart';
// test
class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account ? ", style: LightModeSmallTextStyle),
        GestureDetector(
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              print("rememberToken" );
              print(prefs.getString('rememberToken')??"null");
              var x= prefs.getString('rememberToken')??"null";
              print(x);
              if(x != "null"){
                RememberMeRequestModel model2 = RememberMeRequestModel(
                  rememberToken: prefs?.getString('rememberToken')!,
                );
                APIService.rememberMe(model2).then((response) async => {
                  if (response.status == "Valid")
                    {
                      print(response.status),
                      Navigator.pushNamed(context, HomePageScreen.routeName)
                    }
                  else
                    {
                      print("remember token not valid"),
                      Navigator.pushNamed(context, HomeScreen.routeName)
                    }
                });

              }
              else{
                print("there is not a remeber me token");
                Navigator.pushNamed(context, SignInScreen.routeName);
              }

              //  Navigator.pushNamed(context, SignInScreen.routeName);
            },
            child: Text(
              "Log in ",
              style: LogInTextStyle,
            )),
      ],
    );
  }
}

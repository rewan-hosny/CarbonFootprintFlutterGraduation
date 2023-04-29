import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/components/already_have_account.dart';

import 'package:graduation/components/row_of_socal_card.dart';
import 'package:graduation/models/forget_password_request_model.dart';
import 'package:graduation/models/login_request_model.dart';
import 'package:graduation/models/register_request_model.dart';

import 'package:graduation/models/verify_request_model.dart';
import 'package:graduation/services/api_service.dart';
import 'package:graduation/size_config.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../sign_up/sign_up_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: // EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: // EdgeInsets.symmetric(vertical: 50),
                    EdgeInsets.only(top: 20),
                child: SvgPicture.asset(
                    "assets/images/undraw_blooming_re_2kc4.svg",
                    height: SizeConfig.screenHeight * 0.4),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "Reduce your carbon footprint",
                textAlign: TextAlign.center,
                style: LightModeHeadersStyle,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Text(
                "Taking control of our energy \nconsumption to make our planet safe",
                textAlign: TextAlign.center,
                style: LightModeSmallTextStyle,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.075,
              ),
              DefaultButton(
                  text: "Sign Up",
                  press: () {
                    Navigator.pushNamed(context, SignUpScreen.routeName);




                    // LoginRequestModel model = LoginRequestModel(
                    //     email:"Mayada.Mayada.fci3@gmail.com",
                    //     password:"123456789123"
                    // );
                    // APIService.login(model).then((response) =>{
                    //   if(response){
                    //     print("succeed "),
                    //     Navigator.pushNamed(context, SignUpScreen.routeName)
                    //   }
                    //   else{
                    //     print("fail")
                    // }
                    // });

                    //
                    // RegisterRequestModel model = RegisterRequestModel(
                    //     first_name:"Emannnnnnn",
                    //     last_name:"Khaled",
                    //     college:"Computer Science",
                    //     university:"Suez University",
                    //     gender:"Female",
                    //     email:"Mayada.Mayada.fci3@gmail.com",
                    //     password:"123456789123",
                    //     carbon_em:3.1
                    //
                    // );
                    // APIService.register(model).then((response) =>{
                    //   if(response.token != null){
                    //     print("succeed "),
                    //     Navigator.pushNamed(context, SignUpScreen.routeName)
                    //   }
                    //   else{
                    //     print("fail")
                    //   }
                    // });
                    //
                    //

                    //
                    //
                    // ForgetPasswordRequestModel model = ForgetPasswordRequestModel(
                    //
                    //     email:"Emannnnnnn.yasser.fci3@gmail.com",
                    //
                    //
                    // );
                    // APIService.forgetPassword(model).then((response) =>{
                    //   if(response.status != "email doesn't exist"){
                    //     print("succeed 1"),
                    //     print(response.status),
                    //     Navigator.pushNamed(context, SignUpScreen.routeName)
                    //   }
                    //   else{
                    //     print("fail")
                    //   }
                    // });

                    // VerifyRequestModel model = VerifyRequestModel(
                    //
                    //   otp:"1234",
                    //
                    //
                    // );
                    // APIService.verify(model).then((response) =>{
                    //   if(response.status == "Not verified"){
                    //     print("succeed 2"),
                    //     print(response.status),
                    //     Navigator.pushNamed(context, SignUpScreen.routeName)
                    //   }
                    //   else{
                    //     print("fail"),
                    //     print(response.status),
                    //   }
                    // });
                  }),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              AlreadyHaveAccount(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.035,
              ),
              Text(
                "or Continue with",
                textAlign: TextAlign.center,
                style: ContinueWithTextStyle,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              RowOfSocalCards()
            ],
          ),
        ),
      ),
    ));
  }
}

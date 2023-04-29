import 'package:flutter/material.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/create_new_password/components/create_new_password_form.dart';
import 'package:graduation/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SizedBox(
    width: double.infinity,
    child: Padding(
        padding: EdgeInsets.all(24),
    child: SingleChildScrollView(

    child: Column(
    children: [
    TopBar(text:"",press: (){},),
      SizedBox(height: SizeConfig.screenHeight*0.02,),
      Align(child: SvgPicture.asset("assets/images/undraw_confirmed_re_sef7.svg" , height:SizeConfig.screenHeight*.31,), alignment: Alignment.topCenter,),
      SizedBox(height: SizeConfig.screenHeight*0.03,),
      Align(child: Text("Create new password" , style: LightModeHeadersStyle ),alignment: Alignment.topLeft,),
      SizedBox(height: SizeConfig.screenHeight*0.01,),
      Align(
        child:
        RichText(
          text: TextSpan(
            // Note: Styles for TextSpans must be explicitly defined.
            // Child text spans will inherit styles from parent
            style: LightModeSmallTextStyle,
            children: <TextSpan>[
              TextSpan(text: 'Your new password should be '),
              TextSpan(text: 'different\n', style:LogInTextStyle),
              TextSpan(text: 'from previous used password'),
            ],
          ),
        ),
        alignment: Alignment.topLeft,
      ),
      SizedBox(height: SizeConfig.screenHeight*0.04,),
      CraeteNewPasswordForm(),


    ]
    )
    )
    )
    )


    );
  }
}

import 'package:flutter/material.dart';
import 'package:graduation/components/custom_suffix_icon.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/models/reset_password_request_model.dart';
import 'package:graduation/screens/sign_in/sign_in_screen.dart';
import 'package:graduation/services/api_service.dart';
import 'package:graduation/size_config.dart';

class CraeteNewPasswordForm extends StatefulWidget {
  const CraeteNewPasswordForm({Key? key}) : super(key: key);

  @override
  State<CraeteNewPasswordForm> createState() => _CraeteNewPasswordFormState();
}

class _CraeteNewPasswordFormState extends State<CraeteNewPasswordForm> {

  final _formKey = GlobalKey<FormState>();

  String? newpassword;
  String? conform_password;
  String _PasswordErrorMessage = '';
  String _ConfirmPasswordErrorMessage = '';
  bool _flag1 = false;
  bool _flag2 = false;
  var _pass;
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        Align(child: Text("New Password",style: textStyle,), alignment: Alignment.topLeft,),
        SizedBox(height: SizeConfig.screenHeight*0.012,),
        buildPasswordFormField(),
        Align(child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(_PasswordErrorMessage,style: ErrorsTextStyle,),
        ),alignment: Alignment.topLeft,),
        SizedBox(height: SizeConfig.screenHeight*0.01,),


        SizedBox(height: SizeConfig.screenHeight*0.02,),
        Align(child: Text("Confirm Password",style: textStyle,), alignment: Alignment.topLeft,),
        SizedBox(height: SizeConfig.screenHeight*0.012,),
        buildConfirmPasswordFormField(),
        Align(child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(_ConfirmPasswordErrorMessage,style: ErrorsTextStyle,),
        ),alignment: Alignment.topLeft,),
        SizedBox(height: SizeConfig.screenHeight*0.036,),
        //SizedBox(height: SizeConfig.screenHeight*0.016,),
        DefaultButton(text: "Reset Password",press:isOk()? () {
         // Navigator.pushNamed(context, SignInScreen.routeName);

          ResetPasswordRequestModel model = ResetPasswordRequestModel(

            password:passwordController.text

          );
          APIService.resetPassword(model).then((response) =>{
            //  print(response.status)
            // print(response.status)
            if(response.Success == "Password has changed successfully"){
              print("succeed"),
              print(response.Success),
              Navigator.pushNamed(context, SignInScreen.routeName)

            }
            else{
              print("reset password fail"),
              print(response.Success),
            }

          });







        }:null,)




      ],
    );
  }




  Padding buildPasswordFormField(){

    return Padding(
        padding:
        EdgeInsets.all(0),
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            color: LightModeLightGreenColor,
            borderRadius: new BorderRadius.circular(12.0),
          ),


          child: Padding(
            padding: EdgeInsets.only(left: 12),
            child: TextFormField(
              controller: passwordController,
              obscureText: true,
              onChanged: (val) {
                // val = _pass;
                validatePassword(val);
              },

              decoration: InputDecoration(
                  border: InputBorder.none,
                  //hintText: '12345678',
                  hintStyle: InputTextStyle ,
                  labelStyle: InputTextStyle,
                  suffixIcon:

                  CustomSuffixIcon(svgIcon: "assets/icons/mdi_eye-lock-open.svg",)


                //SvgPicture.asset("")

              ),

            ),
          ),


        ))



    ;



  }




  Padding buildConfirmPasswordFormField(){

    return Padding(
        padding:
        EdgeInsets.all(0),
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            color: LightModeLightGreenColor,
            borderRadius: new BorderRadius.circular(12.0),
          ),


          child: Padding(
            padding: EdgeInsets.only(left: 12),
            child: TextFormField(
              onChanged: (val) {
                // _confirmPass = val;
                validateConfirmPassword(val);

              },
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  // hintText: '12345678',
                  hintStyle:InputTextStyle ,
                  labelStyle: InputTextStyle,
                  suffixIcon:

                  CustomSuffixIcon(svgIcon: "assets/icons/mdi_eye-lock-open.svg",)


                //SvgPicture.asset("")

              ),

            ),
          ),


        ))



    ;



  }

  bool ifThereIsError(String errorMessage , bool _flag){
    if(errorMessage.isNotEmpty ){
      return true;
    }
    else if(errorMessage=="" && _flag == false ){
      return true;
    }
    else{
      return false;
    }

  }

  bool isOk() {
    //print(_flag);
    if (

    ifThereIsError(_PasswordErrorMessage,_flag1) || ifThereIsError(_ConfirmPasswordErrorMessage,_flag2)

    ) {
      return false;
    }
    return true;
  }

  void validatePassword(String val){

    if (val.isEmpty) {
      setState(() {
        _PasswordErrorMessage = kPassNullError;
      });
    } else if (val.length<8) {
      setState(() {
        _PasswordErrorMessage = kShortPassError;
      });
    } else {
      setState(() {
        _PasswordErrorMessage = "";
      });
      _pass = val;
      _flag1=true;

    }


  }

  void validateConfirmPassword(String val){
//print(_pass.text);
    if (val.isEmpty) {
      setState(() {
        _ConfirmPasswordErrorMessage = kPassNullError;
      });
    } else if (val != _pass) {
      setState(() {
        _ConfirmPasswordErrorMessage = kMatchPassError;
      });
    } else {
      setState(() {
        _ConfirmPasswordErrorMessage = "";
      });
      _flag2=true;
      // conform_password = val;
    }




  }

}


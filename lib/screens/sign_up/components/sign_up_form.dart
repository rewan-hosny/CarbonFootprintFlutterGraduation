import 'package:flutter/material.dart';
import 'package:graduation/components/already_have_account.dart';
import 'package:graduation/components/custom_suffix_icon.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/complete_profile/complete_profile_screen.dart';
import 'package:graduation/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? fName;
  String? sName;
  String? email;
  String? password;
  String? conform_password;
  var _pass;
  var _confirmPass;

  var _isObscured;
  var _isObscured2;

  String _EmailErrorMessage = '';
  String _PasswordErrorMessage = '';
  String _FirstNameErrorMessage = '';
  String _SecondNameErrorMessage = '';
  String _ConfirmPasswordErrorMessage = '';
  bool _flag1 = false;
  bool _flag2 = false;
  bool _flag3 = false;
  bool _flag4 = false;
  bool _flag5 = false ;


  TextEditingController fNameController = TextEditingController();
  TextEditingController sNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  final Map<String,String> firstSignUpScreenData = {};


  @override
  void initState(){
    super.initState();
    _isObscured = true;
    _isObscured2=true;
  }
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Align(child: Text("First Name", style: textStyle,),
            alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight * 0.012,),
          buildFirstNameFormField(),
          Align(child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(_FirstNameErrorMessage, style: ErrorsTextStyle,),
          ), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight * 0.01,),


          Align(child: Text("Second Name", style: textStyle,),
            alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight * 0.012,),
          buildSecondNameFormField(),
          Align(child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(_SecondNameErrorMessage, style: ErrorsTextStyle,),
          ), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight * 0.01,),


          Align(child: Text("Email", style: textStyle,),
            alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight * 0.012,),
          buildEmailFormField(),
          Align(child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(_EmailErrorMessage, style: ErrorsTextStyle,),
          ), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight * 0.01,),


          Align(child: Text("Password", style: textStyle,),
            alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight * 0.012,),
          buildPasswordFormField(),
          Align(child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              _PasswordErrorMessage, style: ErrorsTextStyle,),
          ), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight * 0.01,),


          Align(child: Text("Confirm Password", style: textStyle,),
            alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight * 0.012,),
          buildConfirmPasswordFormField(),
          Align(child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              _ConfirmPasswordErrorMessage, style: ErrorsTextStyle,),
          ), alignment: Alignment.topLeft,),
          SizedBox(height: SizeConfig.screenHeight * 0.02,),

          DefaultButton(text: "Continue", press:isOk()? () {
            // if (_formKey.currentState!.validate()) {
            //   print("_FirstNameErrorMessage : "+_FirstNameErrorMessage);
             //  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
            // }
            
            firstSignUpScreenData["firstName"]=fNameController.text;
            firstSignUpScreenData["secondName"]=sNameController.text;
            firstSignUpScreenData["email"]=emailController.text;
            firstSignUpScreenData["password"]=passwordController.text;
           // print(_FirstNameErrorMessage);
           //  Navigator.pushNamed(context,
           //      MaterialPageRoute(
           //        builder: (context) => CompleteProfileScreen(firstSignUpScreenData:firstSignUpScreenData),
           //      )
           //
           //      );

            // Navigator.pushNamed(context, CompleteProfileScreen.routeName , arguments: firstSignUpScreenData);






            Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) =>
                    CompleteProfileScreen(firstSignUpScreenData:firstSignUpScreenData,)));
          }
          :null  ),


          // Align(
          //   alignment: Alignment.topLeft,
          //   child: Column(
          //     children: [
          //       Text("We have sent a code to your phone \n" , style: LightModeSmallTextStyle,),
          //       Row(
          //         children: [
          //           Text("number, please ",style: LogInTextStyle,),
          //           Text("enter the code...", style: LightModeSmallTextStyle)
          //         ],
          //       ),
          //     ],
          //   ),
          // )

        ],
      ),

    );
  }

  Padding buildFirstNameFormField() {
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
              controller: fNameController,
              onSaved: (newValue) => fName = newValue!,
              onChanged: (val) {
                validateFirstName(val);

              },
              decoration: InputDecoration(

                  //contentPadding: EdgeInsets.only(left: 11, right: 3, top: 14, bottom: 14),
                  border: InputBorder.none,
                 // floatingLabelBehavior: FloatingLabelBehavior.always,
                 // floatingLabelAlignment: FloatingLabelAlignment.center,
                 // floatingLabelStyle:FloatingLabelBehavior.never,
                  hintText: 'Name',
                  hintStyle: InputTextStyle,
                  labelStyle: InputTextStyle,
                  suffixIcon:

                  CustomSuffixIcon(
                    svgIcon: "assets/icons/material-symbols_person-rounded.svg",)


                //SvgPicture.asset("")

              ),

            ),
          ),


        ))


    ;
  }

  Padding buildSecondNameFormField() {
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
              controller: sNameController,
              onSaved: (newValue) => sName = newValue!,
              onChanged: (val) {
                validateSecondName(val);
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Second Name',
                  hintStyle: InputTextStyle,
                  labelStyle: InputTextStyle,
                  suffixIcon:

                  CustomSuffixIcon(
                    svgIcon: "assets/icons/material-symbols_person-rounded.svg",)


                //SvgPicture.asset("")

              ),

            ),
          ),


        ))


    ;
  }

  Padding buildEmailFormField() {
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
              controller: emailController,
              onSaved: (newValue) => email = newValue!,
              keyboardType: TextInputType.emailAddress,
              onChanged: (val) {
                validateEmail(val);
              },
              // validator:(val){
              //   validateEmail(val!);
              //
              // },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'example@gmail.com',
                  hintStyle: InputTextStyle,
                  labelStyle: InputTextStyle,
                  suffixIcon:

                  CustomSuffixIcon(svgIcon: "assets/icons/mdi_email.svg",)


                //SvgPicture.asset("")

              ),

            ),
          ),


        ))


    ;
  }

  Padding buildPasswordFormField() {
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
              //controller: _pass,
              onSaved: (newValue) => password = newValue,
              obscureText: _isObscured,
              onChanged: (val) {
               // val = _pass;
                validatePassword(val);
              },

              decoration: InputDecoration(
                  border: InputBorder.none,
                  //hintText: '12345678',
                  hintStyle: InputTextStyle,
                  labelStyle: InputTextStyle,
                  suffixIcon:IconButton(
                    color: LightModeMainColor,
                    padding: EdgeInsetsDirectional.only(end: 12.0),
                    icon: _isObscured ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                    onPressed: (){
                      setState(() {
                        _isObscured =! _isObscured;
                      });
                    },
                  )

                  // CustomSuffixIcon(
                  //   svgIcon: "assets/icons/mdi_eye-lock-open.svg",)


                //SvgPicture.asset("")

              ),

            ),
          ),


        ))


    ;
  }


  Padding buildConfirmPasswordFormField() {
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
             controller: _confirmPass,
             // onSaved: (newValue) => conform_password = newValue,
              obscureText: _isObscured2,
              onChanged: (val) {
               // _confirmPass = val;
                validateConfirmPassword(val);

              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  // hintText: '12345678',
                  hintStyle: InputTextStyle,
                  labelStyle: InputTextStyle,
                  suffixIcon:IconButton(
                    color: LightModeMainColor,
                    padding: EdgeInsetsDirectional.only(end: 12.0),
                    icon: _isObscured2 ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                    onPressed: (){
                      setState(() {
                        _isObscured2 =! _isObscured2;
                      });
                    },

                  )

                  // CustomSuffixIcon(
                  //   svgIcon: "assets/icons/mdi_eye-lock-open.svg",)


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

        ifThereIsError(_ConfirmPasswordErrorMessage,_flag5) || ifThereIsError(_PasswordErrorMessage,_flag4) ||
        ifThereIsError(_FirstNameErrorMessage,_flag1) || ifThereIsError(_SecondNameErrorMessage,_flag2) ||
        ifThereIsError(_EmailErrorMessage,_flag3)


    ) {
      return false;
    }
    return true;
  }

  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _EmailErrorMessage = kEmailNullError;
      });
    } else if (!emailValidatorRegExp.hasMatch(val)) {
      setState(() {
        _EmailErrorMessage = kInvalidEmailError;
      });
    } else {
      setState(() {
        _EmailErrorMessage = "";

      });
      _flag3=true;
    }
  }

  void validateFirstName(String val) {

    if (val.isEmpty) {
      setState(() {
        _FirstNameErrorMessage = kNamelNullError;
      });

    } else if (val.length < 3) {
      setState(() {
        _FirstNameErrorMessage = kNamelInvalidError;
      });

    } else {
      setState(() {
        _FirstNameErrorMessage = "";


      });
      _flag1=true;
    }
    return null;
  }

  void validateSecondName(String val) {
    if (val.isEmpty) {
      setState(() {
        _SecondNameErrorMessage = kNamelNullError;
      });
    } else if (val.length < 3) {
      setState(() {
        _SecondNameErrorMessage = kNamelInvalidError;
      });
    } else {
      setState(() {
        _SecondNameErrorMessage = "";

      }


      );
      _flag2=true;
    }
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
      _flag4=true;

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
      _flag5=true;
     // conform_password = val;
    }




  }



}
import 'package:flutter/material.dart';
import 'package:graduation/models/update_profile_request.dart';
import 'package:graduation/services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../complete_profile/complete_profile_screen.dart';
import '../../profile/profile_screen.dart';
class EditProfileForm extends StatefulWidget {
  final Map<String,String> currentUserData;
  const EditProfileForm({Key? key, required this.currentUserData}) : super(key: key);

  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String? fName;
  String? sName;
  String? email;
  String? password;
  String? conform_password;
  String? temp_fName;
  String? temp_sName;
  String? temp_email;
  String? temp_password;
  String? temp_conform_password;
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

          DefaultButton(text: "Update Profile", press:isOk()? () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
print("button is clicked");

// if( fNameController.text != null){
//   temp_fName=fNameController.text !;
//             }else{
//   temp_fName="";
//             };
//

            UpdateProfileRequest model = UpdateProfileRequest(
              //   firstName: fNameController.text,
              //   lastName : sNameController.text,
              //   email : emailController.text,
              // password: passwordController.text,

               // "college":"CS",
              //  "university":"Suez University",
              //  "gender":"Female",
              // email:"test2@gmail.com",
              // password:"Eman_12345678",
              // firstName:"Emannnn",
              // lastName:"Khaled",


                // password:"Eman_12345678",
                // firstName:"Mony",
                // lastName:"Khaled",
                // college:"CS",
                // university:"Suez University",
                // gender:"Female",
                // email:"test2@gmail.com"


              //   password:"Ee_12345678",
              //   firstName:"yarb",
              //   lastName:"Khaled",
              // email:"eman2@gmail.com",



              firstName: fNameController.text==""?null:fNameController.text ,
               lastName : sNameController.text==""?null:sNameController.text,
              email : emailController.text==""?null:emailController.text,
              password: passwordController.text==""?null:passwordController.text,



            //
            //
            // college:"CS",
            //     university:"Suez University",
            //     gender:"Female"
            //
            //





            );
            print ("email controller");
            print(emailController.text);
            APIService.UpdateProfile(model).then((response) => {
                  if(response.status == "Success"){
                    print("updated successfully"),
                    print("response.status"),
                    print(response.status),

                    // print("before checking"),
                    // print("fNameController.text"),
                    // print(fNameController.text),
                    // if(fNameController.text!=null){
                    //   widget.currentUserData["fName"]=fNameController.text,
                    //   prefs.setString("currentUserFName", fNameController.text),
                    // },
                    // print("sNameController.text"),
                    // print(sNameController.text),
                    // if(sNameController.text!=null){
                    //   widget.currentUserData["sName"]=sNameController.text,
                    //   prefs.setString("currentUserSName", sNameController.text),
                    // },
                    //
                    // print("widget.currentUserData[fName] in edit profile sign In"),
                    // print(widget.currentUserData["fName"]),
                    APIService.getCurrentUserData().then((response) =>
                    {
                      temp_fName = response.firstName,
                      temp_sName = response.lastName,
                      temp_email = response.email,
                      // temp_imagePathTemp = response.image,
                      // temp_publicId = response.publicId,
                      // prefs.setString('currentUserPublicId', temp_publicId!),
                      //
                      // print("imagePathTemp in profile body"),
                      // print(temp_imagePathTemp),
                      // if(temp_imagePathTemp == null){
                      //   temp_imagePath = ""
                      // }
                      // else
                      //   {
                      //     temp_imagePath = temp_imagePathTemp
                      //   },
                      // print("imagePath in profile body"),
                      // print(temp_imagePath),

                      prefs.setString('currentUserFName', temp_fName!),
                      prefs.setString('currentUserSName', temp_sName!),
                      prefs.setString('currentUserEmail', temp_email!),
                     // prefs.setString('currentImagePath', temp_imagePath!),
                      print("currentImagePath in prefs.setString in profile body"),
                      print(prefs.getString('currentImagePath')!),
                      widget.currentUserData["fName"]= prefs.getString('currentUserFName')!,
                      widget.currentUserData["sName"]= prefs.getString('currentUserSName')!,
                      widget.currentUserData["email"]= prefs.getString('currentUserEmail')!,
                      widget.currentUserData["imagePath"]= prefs.getString('currentImagePath')!,
                      if(prefs.getString('currentUserFName')! != null){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen(
                                  currentUserData: widget.currentUserData,

                                ))


                        ).then((_) =>


                        // This block runs when you have returned back to the 1st Page from 2nd.
                        setState(() {
                          // Call setState to refresh the page.
                        })






                        )

//            Navigator.push(
//            context,
//            MaterialPageRoute(
//            builder: (context) => ProfileScreen(
//            currentUserData: currentUserData,
//
//            ))
//
//
//            )




                      }

                    }),

            // Navigator.pushNamed(context, ProfileScreen.routeName ).then((_) {
            // // This block runs when you have returned back to the 1st Page from 2nd.
            // setState(() {
            // // Call setState to refresh the page.
            // });
            // })
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => ProfileScreen(
            //                   currentUserData: widget.currentUserData,
            //
            //                 ))
            //
            //
            // ).then((_) =>
            //
            //
            //           // This block runs when you have returned back to the 1st Page from 2nd.
            //           setState(() {
            //           // Call setState to refresh the page.
            //           })
            //
            //
            //
            //
            //
            //
            //         )

            }
                  else{
                    print("update failed")
                  }



            });








          }
              :null  ),


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
                  hintText: widget.currentUserData["fName"]!,
                 // T:widget.currentUserData["fName"]!,
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
                  hintText: widget.currentUserData["sName"]!,
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
                  hintText: widget.currentUserData["email"]!,
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
                 // hintText: '12345678',
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
    // if (
    //
    // ifThereIsError(_ConfirmPasswordErrorMessage,_flag5) || ifThereIsError(_PasswordErrorMessage,_flag4) ||
    //     ifThereIsError(_FirstNameErrorMessage,_flag1) || ifThereIsError(_SecondNameErrorMessage,_flag2) ||
    //     ifThereIsError(_EmailErrorMessage,_flag3)
    //
    //
    // ) {
    //   return false;
    // }
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

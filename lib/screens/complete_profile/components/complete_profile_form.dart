import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/models/register_request_model.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/intro_questions/intro_questions.dart';
import 'package:graduation/screens/sign_up/sign_up_screen.dart';
import 'package:graduation/services/api_service.dart';
import 'package:graduation/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../components/default_button.dart';
import 'package:fluttertoast/fluttertoast.dart';
class CompleteProfileForm extends StatefulWidget {
  final Map<String, String> firstSignUpScreenData;
  const CompleteProfileForm({Key? key, required this.firstSignUpScreenData})
      : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  // final _formKey = GlobalKey<FormState>();

  String? newpassword;
  String? conform_password;
  String gender = "male";
  String _universityErrorMessage = '';
  String _collegeErrorMessage = '';
  bool _flag1 = false;
  bool _flag2 = false;
  String? temp_fName;
  String? temp_sName;
  String? temp_email;
  String? temp_password;
  String? temp_conform_password;
  String? temp_imagePath;
  String? temp_publicId;
  String? temp_description;
  String? temp_imagePathTemp;
  String? temp_testPassImagePath;


  TextEditingController universityController = TextEditingController();
  TextEditingController collegeController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: SizeConfig.screenHeight * 0.05,
      ),
      Align(
        child: Text(
          "University",
          style: textStyle,
        ),
        alignment: Alignment.topLeft,
      ),

      SizedBox(
        height: SizeConfig.screenHeight * 0.012,
      ),
      buildUniversityNameFormField(),
      Align(
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            _universityErrorMessage,
            style: ErrorsTextStyle,
          ),
        ),
        alignment: Alignment.topLeft,
      ),
      SizedBox(
        height: SizeConfig.screenHeight * 0.03,
      ),

      Align(
        child: Text(
          "College",
          style: textStyle,
        ),
        alignment: Alignment.topLeft,
      ),
      SizedBox(
        height: SizeConfig.screenHeight * 0.012,
      ),
      buildCollegeNameFormField(),
      Align(
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            _collegeErrorMessage,
            style: ErrorsTextStyle,
          ),
        ),
        alignment: Alignment.topLeft,
      ),
      SizedBox(
        height: SizeConfig.screenHeight * 0.01,
      ),

      SizedBox(
        height: SizeConfig.screenHeight * 0.02,
      ),
      Align(
        child: Text("Gender", style: textStyle),
        alignment: Alignment.centerLeft,
      ),

      SizedBox(
        height: SizeConfig.screenHeight * 0.03,
      ),
      // GenderForm(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 140,
            height: 160,
            decoration: BoxDecoration(
                color: LightGray, borderRadius: new BorderRadius.circular(14)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Transform.scale(
                      scale: 1.3,
                      child: RadioListTile(
                          activeColor: LightModeMainColor,
                          value: "Male",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          }),

                      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      //   value: value1,
                      //   onChanged: (bool? value) {
                      //     setState(() {
                      //       this.value1 = value!;
                      //     }
                      //     );
                      //   },
                      //   activeColor: LightModeMainColor,
                      //   checkColor: Colors.white,
                      //   autofocus: true,
                      // ),
                    )),
                Align(
                  child: SvgPicture.asset(
                    "assets/images/undraw_male_avatar_re_y880.svg",
                    height: SizeConfig.screenHeight * .09,
                  ),
                  alignment: Alignment.topCenter,
                ),
                Text(
                  "Male",
                  style: textStyle,
                )
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.09,
          ),
          Container(
            width: 140,
            height: 160,
            decoration: BoxDecoration(
                color: LightGray, borderRadius: new BorderRadius.circular(14)),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Transform.scale(
                        scale: 1.3,
                        child: RadioListTile(
                            activeColor: LightModeMainColor,
                            value: "Female",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            })

                        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        //   value: value2,
                        //   onChanged: (bool? value) {
                        //     setState(() {
                        //       this.value2 = value!;
                        //     }
                        //     );
                        //   },
                        //   activeColor: LightModeMainColor,
                        //   checkColor: Colors.white,
                        //   autofocus: true,
                        // ),
                        )),
                Align(
                  child: SvgPicture.asset(
                    "assets/images/undraw_female_avatar_re_l6cx.svg",
                    height: SizeConfig.screenHeight * .09,
                  ),
                  alignment: Alignment.topCenter,
                ),
                Text(
                  "Female",
                  style: textStyle,
                ),
              ],
            ),
          ),
        ],
      ),

      SizedBox(
        height: SizeConfig.screenHeight * 0.08,
      ),
      Container(
        child: DefaultButton(
          text: "Register",
          press: isOk()
              ? () async {
                  //Navigator
                  //
            SharedPreferences prefs = await SharedPreferences.getInstance();
                  RegisterRequestModel model = RegisterRequestModel(
                    first_name: widget.firstSignUpScreenData["firstName"],
                    last_name: widget.firstSignUpScreenData["secondName"],
                    college: collegeController.text,
                    university: universityController.text,
                    gender: gender,
                    email: widget.firstSignUpScreenData["email"],
                    password: widget.firstSignUpScreenData["password"],

  );


                  APIService.register(model).then((response) => {
                        if (response.message == "Registered successfully")
                          {
                            print("succeed "+response.message!+"   "+response.token!),
                            APIService.getCurrentUserData().then((response) =>
                            {
                              temp_fName = response.firstName,
                              temp_sName = response.lastName,
                              temp_email = response.email,
                              temp_imagePathTemp = response.image,
                              temp_publicId = response.publicId,
                              prefs.setString('currentUserPublicId', temp_publicId!),

                              print("imagePathTemp in profile body"),
                              print(temp_imagePathTemp),
                              if(temp_imagePathTemp == null){
                                temp_imagePath = ""
                              }
                              else
                                {
                                  temp_imagePath = temp_imagePathTemp
                                },
                              print("imagePath in profile body"),
                              print(temp_imagePath),

                              prefs.setString('currentUserFName', temp_fName!),
                              prefs.setString('currentUserSName', temp_sName!),
                              prefs.setString('currentUserEmail', temp_email!),
                              prefs.setString('currentImagePath', temp_imagePath!),
                              print("currentImagePath in prefs.setString in profile body"),
                              print(prefs.getString('currentImagePath')!),
                              // currentUserData["fName"]= prefs.getString('currentUserFName')!,
                              // currentUserData["sName"]= prefs.getString('currentUserSName')!,
                              // currentUserData["email"]= prefs.getString('currentUserEmail')!,
                              // currentUserData["imagePath"]= prefs.getString('currentImagePath')!,
                              if(prefs.getString('currentUserFName')! != null){
                                Navigator.pushNamed(context, IntroScreen.routeName),

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



                          }
                        else if(response.message == "Email exists")
                          {

                            print("Email exists"),
                            Fluttertoast.showToast(msg: "Email exists",
                            toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 4,
                              backgroundColor: Colors.grey,
                              textColor: Colors.black,
                              fontSize: 15

                            )


                          }
                      }
                      );
                }
              : null,
        ),
        alignment: Alignment.bottomCenter,
      ),
      SizedBox(height: SizeConfig.screenHeight * 0.03),
    ]);
  }

  Padding buildUniversityNameFormField() {
    return Padding(
        padding: EdgeInsets.all(0),
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            color: LightModeLightGreenColor,
            borderRadius: new BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 12),
            child: TextFormField(
              controller: universityController,
              onChanged: (val) {
                validateUniversityField(val);
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Suez University',
                hintStyle: InputTextStyle,
                labelStyle: InputTextStyle,
                // suffixIcon:

                // CustomSuffixIcon(svgIcon: "assets/icons/material-symbols_person-rounded.svg",)

                //SvgPicture.asset("")
              ),
            ),
          ),
        ));
  }

  Padding buildCollegeNameFormField() {
    return Padding(
        padding: EdgeInsets.all(0),
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            color: LightModeLightGreenColor,
            borderRadius: new BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 12),
            child: TextFormField(
              controller: collegeController,
              onChanged: (val) {
                validateCollegeField(val);
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Computer Science',
                hintStyle: InputTextStyle,
                labelStyle: InputTextStyle,
                // suffixIcon:

                // CustomSuffixIcon(svgIcon: "assets/icons/material-symbols_person-rounded.svg",)

                //SvgPicture.asset("")
              ),
            ),
          ),
        ));
  }

  bool ifThereIsError(String errorMessage, bool _flag) {
    if (errorMessage.isNotEmpty) {
      return true;
    } else if (errorMessage == "" && _flag == false) {
      return true;
    } else {
      return false;
    }
  }

  bool isOk() {
    //print(_flag);
    if (ifThereIsError(_universityErrorMessage, _flag1) ||
        ifThereIsError(_collegeErrorMessage, _flag2)) {
      return false;
    }
    return true;
  }

  void validateUniversityField(String val) {
    if (val.isEmpty) {
      setState(() {
        _universityErrorMessage = kUniversityNullError;
      });

      // will we check if the input exists in a list
    } else if (val.length < 2) {
      setState(() {
        _universityErrorMessage = kUniversityInvalidError;
      });
    } else {
      setState(() {
        _universityErrorMessage = "";
      });
      _flag1 = true;
    }
    return null;
  }

  void validateCollegeField(String val) {
    if (val.isEmpty) {
      setState(() {
        _collegeErrorMessage = kCollegeNullError;
      });

      // will we check if the input exists in a list
    } else if (val.length < 2) {
      setState(() {
        _collegeErrorMessage = kCollegeInvalidError;
      });
    } else {
      setState(() {
        _collegeErrorMessage = "";
      });
      _flag2 = true;
    }
    return null;
  }
}

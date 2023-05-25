import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/staff_before_questions/staff_before_questions_screen.dart';
import 'package:graduation/screens/staff_calculate_solar_panels/staff_calculate_solar_panels.dart';
import 'package:graduation/screens/staff_questions/components/staff_question_one.dart';
import 'package:graduation/screens/staff_stepAfterLogin/staff_stepAfterLogin.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../components/bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../home_page/home_page_screen.dart';

import '../../profile/profile_screen.dart';
import '../../staff_chooseDU_page/staff_chooseDU_page.dart';
import '../../staff_target/staff_target_screen.dart';
import '../../stuff_download/stuff_download_screen.dart';
import '../../stuff_home_page/stuff_home_page_screen.dart';
import '../StaffHello.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

Future<String?> getValueFromSharedPreferences() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? value = prefs.getString('currentStaffFName');
  print('test here');
  print(prefs.getString('currentStaffFName'));
  return value;
}

class _BodyState extends State<Body> {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
 // String fName = fNam;
 // @override
  // Future<void> initState() async {
  //   // TODO: implement initState
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   fName=prefs.getString('currentImagePath')!;
  //
  // }
  String? myValue;
  @override
  void initState() {
    //super.initState();
    print('I entered init state');
    getValueFromSharedPreferences().then((value) {
      setState(() {
        myValue = value;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,





      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight*0.05,),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(40),
                  height: getProportionateScreenHeight(40),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      primary: Colors.white,
                      backgroundColor: LightModeMainColor,
                    ),
                    onPressed: (){Navigator.pushNamed(context, StaffStepAfterLogin.routeName);},
                    child: Image.asset("assets/icons/mdi_arrow-back.png"
                        ,height: SizeConfig.screenHeight*0.06),
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth*0.24,),

                Row(
                  children: [
                    Text("Hello, "+myValue!,
                      style: TextStyle(
                          fontSize: 27,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          color: LightModeSmallTextColor
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.01,),
                    Container(
                      child: Image.asset("assets/icons/Waving_Emoji_Hand_Hello.png"),
                      width: 28,
                      height: 28,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [


                  SizedBox(height: SizeConfig.screenHeight*0.04,),

                  Text("Welcome to you   ,you now can make some challenges for your university based on your plans",
                    style: TextStyle(

                      fontSize: 23,
                      fontFamily: "Poppins3",
                      color: LightModeSmallTextColor,
                      fontWeight:FontWeight.w600,
                    ),
                  textAlign: TextAlign.center,
                  ),

                  SizedBox(height: SizeConfig.screenHeight*0.09,),




                  Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, StaffBeforeQuestionsScreen.routeName);
                        },
                        child:Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                   height: MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    border: Border.all(color: Color.fromRGBO(28,169,83,1), width: 2),
                                    color: Color(0x00000000),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Image.asset(
                                          "assets/images/s7.png",
                                          width: 20,
                                          height: 20,
                                        ),

                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child:
                                          // Wrap(
                                          //   children: [
                                          //     Text("calculate carbon footprint for ",
                                          // style: TextStyle(
                                          //   fontWeight: FontWeight.normal,
                                          //   color: LightModeSmallTextColor,
                                          // ) ),
                                          //     Text("one ", style: TextStyle(
                                          //       fontWeight: FontWeight.w900,
                                          //       color: LightModeMainColor,
                                          //     )),
                                          //     Text("year", style: TextStyle(
                                          //       fontWeight: FontWeight.normal,
                                          //       color: LightModeSmallTextColor,
                                          //     )),
                                          //   ],
                                          // ),




                                          RichText(
                                          textAlign: TextAlign.start,
                                          text: TextSpan(
                                            text: 'calculate carbon footprint for  ',

                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: getProportionateScreenWidth(14),
                                                fontWeight: FontWeight.normal,
                                                color: LightModeSmallTextColor,
                                              )


                                            ,
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'one  ',
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: getProportionateScreenWidth(14),
                                                        fontWeight: FontWeight.w900,
                                                        color: LightModeMainColor,
                                                      ),
                                              ),
                                              TextSpan(

                                                text: 'year',
                                                style:  TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: getProportionateScreenWidth(14),
                                                        fontWeight: FontWeight.normal,
                                                        color: LightModeSmallTextColor,
                                                      ),
                                              ),

                                            ],
                                          ),
                                        )






                                          ,

                                        ),
                                      ),



                                      Expanded(
                                        flex: 1,
                                        child: Image.asset(
                                          "assets/images/leg.png",
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ),

                      SizedBox(height: SizeConfig.screenHeight*0.02,),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Align(
                          child: Text(
                          "OR",
                          style: TextStyle(
                            color: Color(0xFF1CA953),
                            fontSize: 26,
                            height: 22 / 15,
                            fontFamily: "Montserrat",
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w800,

                          ),
                        ),
                      ),),

                      GestureDetector(
                        onTap: ( ){
                          Navigator.pushNamed(context, StaffChoosePage.routeName);
                        },
                        child:Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    border: Border.all(color: Color.fromRGBO(28,169,83,1), width: 2),
                                    color: Color.fromRGBO(28,169,83,1),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(

                                        child: Expanded(
                                          flex: 1,
                                          child: Image.asset(
                                            "assets/images/s7.png",
                                            width: 20,
                                            height: 20,
                                          ),

                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child:
                                          // Wrap(
                                          //   children: [
                                          //     Text("calculate carbon footprint for ",
                                          //         style: TextStyle(
                                          //           fontWeight: FontWeight.normal,
                                          //
                                          //           color: Colors.white,
                                          //         )
                                          //
                                          //     ),
                                          //     Text("many ", style: TextStyle(
                                          //       fontWeight: FontWeight.w900,
                                          //       color: Colors.white,
                                          //     )),
                                          //     Text("year", style: TextStyle(
                                          //       fontWeight: FontWeight.normal,
                                          //
                                          //       color: Colors.white,
                                          //     )),
                                          //   ],
                                          // ),
                                          RichText(
                                            textAlign: TextAlign.start,
                                            text: TextSpan(
                                              text: 'Prediction for ',

                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: getProportionateScreenWidth(14),
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white,
                                              )


                                              ,
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'many  ',
                                                  style: TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontSize: getProportionateScreenWidth(14),
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                TextSpan(

                                                  text: 'years',
                                                  style:  TextStyle(
                                                    fontFamily: "Poppins",
                                                    fontSize: getProportionateScreenWidth(14),
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.white,
                                                  ),
                                                ),

                                              ],
                                            ),
                                          )

                                        ),
                                      ),


                                      Expanded(
                                        flex: 1,
                                        child: Image.asset(
                                          "assets/images/leg.png",
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ),

                      SizedBox(height: SizeConfig.screenHeight*0.08,),
                      Container(

                        child:GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(context, StaffCalculateSolarPanelsScreen.routeName);
                            Navigator.pushNamed(context, StuffHomePageScreen.routeName);
                          },
                          child: Container(
                            width: 140,
                            height: 40,
                            color: LightGray,

                            child: Align(
                              child: Text(
                                "Skip that Now",
                                style: TextStyle(
                                  color: Color(0xFF1CA953),
                                  fontSize: 18,
                                  height: 22 / 15,
                                  fontFamily: "Montserrat",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                               //  decoration: TextDecoration.underline,
                                  decorationColor: LightModeMainColor,
                                ),
                              ),
                            ),
                          ),
                        )
                        ,)





                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),


    );
  }
}


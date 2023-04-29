import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/staff_questions/components/staff_question_one.dart';

import '../../../components/bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../home_page/home_page_screen.dart';

import '../../profile/profile_screen.dart';
import '../../stuff_download/stuff_download_screen.dart';
import '../../stuff_home_page/stuff_home_page_screen.dart';
import '../StaffHello.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
                    onPressed: (){Navigator.pushNamed(context, StuffHomePageScreen.routeName);},
                    child: Image.asset("assets/icons/mdi_arrow-back.png"
                        ,height: SizeConfig.screenHeight*0.06),
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth*0.23,),

                Center(
                  child: Row(
                    children: [
                      Text("Hello,omar",
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
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [


                  SizedBox(height: SizeConfig.screenHeight*0.08,),

                  Text("Welcome to you   ,you now can make some challenges for your university based on your plans",
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: "Poppins3",
                      color: LightModeSmallTextColor,
                      fontWeight:FontWeight.w600,
                    ),),

                  SizedBox(height: SizeConfig.screenHeight*0.06,),


                  SizedBox(height: SizeConfig.screenHeight*0.03,),

                  Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, StaffQuestionOne.routeName);
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
                                          child: Wrap(
                                            children: [
                                              Text("calculate carbon footprint for ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: LightModeSmallTextColor,
                                          ) ),
                                              Text("one ", style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                color: LightModeMainColor,
                                              )),
                                              Text("year", style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: LightModeSmallTextColor,
                                              )),
                                            ],
                                          ),

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
                          Navigator.pushNamed(context, StuffDownloadScreen.routeName);
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
                                          child: Wrap(
                                            children: [
                                              Text("calculate carbon footprint for ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.normal,

                                                    color: Colors.white,
                                                  )

                                              ),
                                              Text("many ", style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                color: Colors.white,
                                              )),
                                              Text("year", style: TextStyle(
                                                fontWeight: FontWeight.normal,

                                                color: Colors.white,
                                              )),
                                            ],
                                          ),

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


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/StaffHello/StaffHello.dart';
import 'package:graduation/screens/staff_before_questions/staff_before_questions_screen.dart';
import 'package:graduation/screens/staff_questions/components/staff_question_one.dart';

import 'package:graduation/screens/staff_step_to_do/staff_step_to_do.dart';
import 'package:graduation/screens/staff_upload/staff_upload_screen.dart';

import '../../../components/bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../home_page/home_page_screen.dart';

import '../../profile/profile_screen.dart';
import '../../staff_stepAfterLogin/staff_stepAfterLogin.dart';
import '../../stuff_download/stuff_download_screen.dart';
import '../../stuff_home_page/stuff_home_page_screen.dart';
import '../staff_chooseDU_page.dart';


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





      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight*0.03,),
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
                          Text("Questions File",
                            style: TextStyle(
                                fontSize: 27,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                color: LightModeSmallTextColor
                            ),
                          ),
                          SizedBox(width: SizeConfig.screenWidth*0.01,),

                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [


                      SizedBox(height: SizeConfig.screenHeight*0.1,),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'You should answer the questions in the file and fill it well with ',
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: "Poppins3",
                                color: LightModeSmallTextColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'correct ',
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: "Poppins3",
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'data',
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: "Poppins3",
                                color: LightModeSmallTextColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),





                      SizedBox(height: SizeConfig.screenHeight*0.07,),

                      Column(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, StaffStepToDo.routeName);
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
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsets.all(25),
                                              child: Wrap(
                                                children: [
                                                  Text("Download File ",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.w600,
                                                        color: LightModeSmallTextColor,
                                                        fontSize: 17,
                                                        fontFamily: "Poppins3",

                                                      ) )
                                                ],
                                              ),

                                            ),
                                          ),



                                          Expanded(
                                            flex: 1,
                                            child: Image.asset(
                                              "assets/images/Download.png",
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
                              Navigator.pushNamed(context, StaffUploadScreen.routeName);
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

                                      ),
                                      child: Row(
                                        children: [

                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsets.all(25),
                                              child: Wrap(
                                                children: [
                                                  Text("Upload File ",
                                                      style: TextStyle(

                                                            fontWeight: FontWeight.w600,
                                                            color: LightModeSmallTextColor,
                                                            fontSize: 17,
                                                            fontFamily: "Poppins3",
                                                      )

                                                  ),

                                                ],
                                              ),

                                            ),
                                          ),


                                          Expanded(
                                            flex: 1,
                                            child: Image.asset(
                                              "assets/images/upload.png",
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







                        ],
                      ),
                      SizedBox(height: SizeConfig.screenHeight*0.02,),




                    ],
                  ),
                ),


              ],
            ),





          ),
          Expanded(
            flex:1,
            child: Column(
              mainAxisAlignment:  MainAxisAlignment.end,
              children: [
                Container(

                  //  color: Colors.lightBlue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(

                            onPressed: (){
                              Navigator.pushNamed(context, StaffHello.routeName);
                            },
                            child: Text(
                              "Prev",
                              style: TextStyle(fontSize: 23, color: LightModeMainColor), //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20))),
                              padding:
                              EdgeInsets.symmetric(vertical: 20, horizontal: 44),
                              primary: Colors.white,
                              backgroundColor: prevButtonColor,
                            )),
                        ElevatedButton(
                            onPressed: ()
                            {
                              Navigator.pushNamed(context, StaffStepToDo.routeName);

                              // print("after you click on button in page one and my current data is : ");

                            },
                            child: Text(
                              "Next",
                              style: TextStyle(fontSize: 23, color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20))),
                              padding:
                              EdgeInsets.symmetric(vertical: 20, horizontal: 44),
                              primary: Colors.white,
                              backgroundColor: LightModeMainColor, //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                            )),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),



    );
  }
}


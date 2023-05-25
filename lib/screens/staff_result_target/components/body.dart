import 'package:flutter/material.dart';
import 'package:graduation/screens/staff_target/staff_target_screen.dart';
import 'package:graduation/screens/target_progress/target_progress_screen.dart';

import '../../../components/bottom_navigation_bar.dart';
import '../../../components/default_button.dart';
import '../../../components/staff_bottom_navigation_bar.dart';
import '../../../components/top_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../stuff_home_page/stuff_home_page_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          floatingActionButton: SizedBox(
            width: 70,
            height: 70,
            child: FloatingActionButton(
              backgroundColor: Colors.grey,//edittttttttttttttttttttttttttttttttt
              elevation: 0,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10,bottom: 5),
                    child: Image.asset("assets/images/Icon.png",
                      width: 25,
                      height: 25,),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("Home",
                      style: TextStyle(fontSize: 9,),),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(context, StuffHomePageScreen.routeName);

              },
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: CustomStaffNavigationBar(flag1: false,
            flag2: false,
            flag3: false,
            flag4: false,
          ),

          body: Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  TopBar(
                      text: "             Result",
                      press: () {
                     //   Navigator.pushNamed(context, HomeScreen.routeName);
                      }
                  ),

                  SizedBox(height: SizeConfig.screenHeight * 0.03),
                  Container(
                    width: 130,height: 130,
                    child: Image.asset("assets/images/s7.png"),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.03),
                  Text("Done Successfully !",style: TextStyle(
                    fontSize: getProportionateScreenWidth(20),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF474747),

                  ),),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Text("Ok, Based on your target The"
                    ,style: TextStyle(
                    fontSize: getProportionateScreenWidth(22),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF363636),

                  ),),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${widget.data["year"]} "
                        ,style: TextStyle(
                          fontSize: getProportionateScreenWidth(22),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1CA953),

                        ),),
                      Text("Emissions will be :"
                        ,style: TextStyle(
                          fontSize: getProportionateScreenWidth(19),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF363636),

                        ),),
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  Text("${widget.data["target"]} "
                    ,style: TextStyle(
                      fontSize: getProportionateScreenWidth(24),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1CA953),

                    ),),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("And the"
                        ,style: TextStyle(
                          fontSize: getProportionateScreenWidth(19),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF363636),

                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(" prediction "
                        ,style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1CA953),

                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text("says it will be"
                        ,style: TextStyle(
                          fontSize: getProportionateScreenWidth(19),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF363636),

                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  Text("${widget.data['Prediction Emission']}  Kg"
                    ,style: TextStyle(
                      fontSize: getProportionateScreenWidth(24),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1CA953),

                    ),
                  textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  // DefaultButton(text: "Take Action !",press: (){
                  //   //   Navigator.pushNamed(context, HomeScreen.routeName);
                  // }),
                  SizedBox(
                  width: getProportionateScreenWidth(329),
                  height: getProportionateScreenHeight(68),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      primary: Colors.white,
                      backgroundColor: LightModeMainColor,
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, TargetProgressScreen.routeName);
                    },
                    child: Text(
                      "Take Action !",
                      style: ButtonFontStyle,
                    ),
                  ),
                ),
                  SizedBox(height: SizeConfig.screenHeight * 0.05)




                ],
              ),
            ),
          ),

        ));
  }
}

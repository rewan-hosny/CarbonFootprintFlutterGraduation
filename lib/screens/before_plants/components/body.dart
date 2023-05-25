import 'package:flutter/material.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/plant1_page/plant1_screen.dart';
import '../../../components/bottom_navigation_bar.dart';
import '../../../components/staff_bottom_navigation_bar.dart';
import '../../../components/top_bar.dart';
import '../../../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../home_page/home_page_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool flag1 = false;
  String currentIcon1="assets/new/up_arrow.svg";
  String currentIcon2="assets/new/up_arrow.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.grey,
          elevation: 0,
          splashColor: LightModeMainColor,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 5),
                child: Image.asset(
                  "assets/images/Icon.png",
                  width: 25,
                  height: 25,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 9,
                  ),
                ),
              ),
            ],
          ),
          onPressed: () {
            Navigator.pushNamed(context, HomePageScreen.routeName);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(
        flag1: false,
        flag2: true,
        flag3: false,
        flag4: false,
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.04,),
              TopBar(text: "            Plants",press: (){

                Navigator.pushNamed(context, HomePageScreen.routeName);
              },),
              SizedBox(height: SizeConfig.screenHeight*0.08,),

              Container(
                padding: EdgeInsets.all(10),
                width: getProportionateScreenHeight(350),
                height: 70,
                decoration: BoxDecoration(
                  color: LightModeLightGreenColor
                ),
                child: RichText(
                  text: TextSpan(style: TextStyle(fontSize: 18,color: LightModeSmallTextColor, fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(text:
                        "Are You Ready To"),
                    TextSpan(text: " Reduce ", style: TextStyle(fontSize: 18,color: LightModeMainColor, fontWeight: FontWeight.w500),),
                    TextSpan(text: "Carbon \nEmissions ?")
                      ]),
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.07,),

              DefaultButton(text: "Try Now !", press: (){Navigator.pushNamed(context, Plant1Screen.routeName);},),

              SizedBox(height: SizeConfig.screenHeight*0.09,),

              GestureDetector(
                onTap: () {
                  setState(() {
                    if (flag1 == false) {
                      flag1 = true;
                      currentIcon1="assets/new/bottomArrow.svg";
                    } else if (flag1 == true) {
                      flag1 = false;
                      currentIcon1= "assets/new/up_arrow.svg";
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF07401D),
                        Color(0xFF096D30),
                        Color(0xFF20C35F)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  // color: Color(0xFF07401D),
                  width: getProportionateScreenWidth(335),
                  height: getProportionateScreenHeight(70),

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),

                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (flag1 == false) {
                            flag1 = true;
                            currentIcon1="assets/new/bottomArrow.svg";
                          } else if (flag1 == true) {
                            flag1 = false;
                            currentIcon1= "assets/new/up_arrow.svg";
                          }
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Need to know more ?",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Poppins2",
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),

                          SvgPicture.asset(
                            currentIcon1,
                              height: getProportionateScreenHeight(10),
                              width: getProportionateScreenWidth(18),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: flag1,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: getProportionateScreenWidth(335),
                          height: getProportionateScreenHeight(700),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child: Column(
                              children: [
                                Text("While plants play a crucial role in reducing carbon footprint emissions through carbon sequestration, it is important to consider the impact of fungi, infections, and diseases on plant health.",
                                style: TextStyle(fontSize: 14, color: LightModeSmallTextColor),),

                                SizedBox(height: SizeConfig.screenHeight*0.05,),

                                Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset("assets/images/s7.png"),
                                    ),
                                    SizedBox(width: SizeConfig.screenWidth*0.02,),

                                    RichText(
                                      text: TextSpan(style: TextStyle(fontSize: 16,color: LightModeSmallTextColor, fontWeight: FontWeight.w500),
                                          children: [
                                            TextSpan(text:
                                            "Here are"),
                                            TextSpan(text: " Key points ", style: TextStyle(fontSize: 16,color: Color(0xFF00D95F), fontWeight: FontWeight.w500),),
                                            TextSpan(text: "to understand:")
                                          ]),
                                    ),
                                  ],
                                ),

                                SizedBox(height: SizeConfig.screenHeight*0.05,),

                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 40),
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF00D95F),
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                      ),
                                    ),
                                    SizedBox(width: SizeConfig.screenWidth*0.03,),
                                    Container(
                                      width: getProportionateScreenWidth(280),
                                        child: Text("Fungal infections and diseases can weaken plants and hinder their ability to sequester carbon.",
                                        style: TextStyle(fontSize: 14,color: LightModeSmallTextColor),),),
                                  ],
                                ),

                                SizedBox(height: SizeConfig.screenHeight*0.03,),

                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 40),
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF00D95F),
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                      ),
                                    ),
                                    SizedBox(width: SizeConfig.screenWidth*0.03,),
                                    Container(
                                      width: getProportionateScreenWidth(280),
                                      child: Text("Infected plants can spread diseases quickly to other plants, impacting carbon sequestration efforts.",
                                        style: TextStyle(fontSize: 14,color: LightModeSmallTextColor),),),
                                  ],
                                ),

                                SizedBox(height: SizeConfig.screenHeight*0.03,),

                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 40),
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF00D95F),
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                      ),
                                    ),
                                    SizedBox(width: SizeConfig.screenWidth*0.03,),
                                    Container(
                                      width: getProportionateScreenWidth(280),
                                      child: Text("Healthy plants are essential for maximizing carbon absorption and reducing carbon footprint emissions.",
                                        style: TextStyle(fontSize: 14,color: LightModeSmallTextColor),),),
                                  ],
                                ),

                                SizedBox(height: SizeConfig.screenHeight*0.03,),

                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 40),
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF00D95F),
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                      ),
                                    ),
                                    SizedBox(width: SizeConfig.screenWidth*0.03,),
                                    Container(
                                      width: getProportionateScreenWidth(280),
                                      child: Text("Early detection, proper treatment, and promoting genetic diversity help manage and prevent plant diseases.",
                                        style: TextStyle(fontSize: 14,color: LightModeSmallTextColor),),),
                                  ],
                                ),
                              ],
                            )
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.01),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

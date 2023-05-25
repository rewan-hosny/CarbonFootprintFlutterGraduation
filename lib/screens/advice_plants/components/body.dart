import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool flag1 = false;
  bool flag2 = false;
  final List<Color> color = <Color>[];
  late LinearGradient gradientColors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight*0.03,),
                TopBar(text:"            Plants",press: (){},),
                Container(
                  width: 220,
                  height: 220,
                  child: Image.asset("assets/images/plants.png"),
                ),

                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          LightModeMainColor,
                          Color(0xFFB0D735),
                        ]
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  width: getProportionateScreenHeight(420),
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(" Some advices about plants",style: TextStyle(
                        fontSize: 18,color: Colors.white,),),
                    ],
                  ),
                ),

                SizedBox(height: SizeConfig.screenHeight*0.03,),


                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 35),
                      child: Container(
                        child: Center(child: Text("1",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                LightModeMainColor,
                                Color(0xFFB0D735),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Plant trees and shrubs on campus to absorb carbon dioxide from atmosphere.",style: TextStyle(
                          fontSize: 14
                      ),),
                    ),
                  ],
                ),


                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: LightModeMainColor,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.02,),


                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        child: Center(child: Text("2",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                LightModeMainColor,
                                Color(0xFFB0D735),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Use native plants that require less water and fertilizer.",style: TextStyle(
                          fontSize: 14
                      ),),
                    ),
                  ],
                ),


                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: LightModeMainColor,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.02,),


                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Container(
                        child: Center(child: Text("3",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                LightModeMainColor,
                                Color(0xFFB0D735),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Consider installing green roofs and walls to reduce the urban heat island effect and promote plant growth.",style: TextStyle(
                          fontSize: 14
                      ),),
                    ),
                  ],
                ),


                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: LightModeMainColor,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.02,),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        child: Center(child: Text("4",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                LightModeMainColor,
                                Color(0xFFB0D735),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Implement composting programs for \nplant waste and other organic material.",style: TextStyle(
                          fontSize: 14
                      ),),
                    ),
                  ],
                ),


                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: LightModeMainColor,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.02,),


                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Container(
                        child: Center(child: Text("5",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                LightModeMainColor,
                                Color(0xFFB0D735),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Use integrated pest management practices to reduce using chemical pesticides and herbicides.",style: TextStyle(
                          fontSize: 14
                      ),),
                    ),
                  ],
                ),


                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: LightModeMainColor,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.02,),


                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        child: Center(child: Text("6",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                LightModeMainColor,
                                Color(0xFFB0D735),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Consider using drought-resistant plant species that require less water.",style: TextStyle(
                          fontSize: 14
                      ),),
                    ),
                  ],
                ),


                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: LightModeMainColor,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.02,),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Container(
                        child: Center(child: Text("7",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                LightModeMainColor,
                                Color(0xFFB0D735),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Promote sustainable landscaping practices, such as using mulch and avoiding over-watering.",style: TextStyle(
                          fontSize: 14
                      ),),
                    ),
                  ],
                ),


                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: LightModeMainColor,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.02,),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Container(
                        child: Center(child: Text("8",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                LightModeMainColor,
                                Color(0xFFB0D735),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Encourage the use of electric or manual gardening tools instead of gas-powered ones, which produce emissions.",style: TextStyle(
                          fontSize: 14
                      ),),
                    ),
                  ],
                ),


                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: LightModeMainColor,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.02,),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Container(
                        child: Center(child: Text("9",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                LightModeMainColor,
                                Color(0xFFB0D735),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Install rainwater collection systems to reduce the amount of water needed for irrigation.",style: TextStyle(
                          fontSize: 14
                      ),),
                    ),
                  ],
                ),


                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Divider(
                  thickness: 1,
                  height: 1,
                  color: LightModeMainColor,
                ),
                SizedBox(height: SizeConfig.screenHeight*0.01,),
              ],
            ),
          ),
        )
    );
  }
}

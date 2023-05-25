import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
                TopBar(text:"            Waste",press: (){},),
                Container(
                  width: 220,
                  height: 220,
                  child: Image.asset("assets/images/wastee.png"),
                ),

                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xFF39B467),
                          Color(0xFFFF736B),
                        ]
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  width:getProportionateScreenHeight(420),
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(" Some advices about waste",style: TextStyle(
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
                                Color(0xFF39B467),
                                Color(0xFFFF736B),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Reduce paper usage by going digital and using electronic documents wherever possible.",style: TextStyle(
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
                                Color(0xFF39B467),
                                Color(0xFFFF736B),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Implement a recycling program for paper, plastic, glass, and metal.",style: TextStyle(
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
                      padding: const EdgeInsets.only(bottom: 45),
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
                                Color(0xFF39B467),
                                Color(0xFFFF736B),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Use composting to dispose of organic waste such as food scraps and yard waste.",style: TextStyle(
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
                        child: Center(child: Text("4",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF39B467),
                                Color(0xFFFF736B),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Encourage the use of reusable containers, bottles, and bags to reduce the amount of single-use plastics.",style: TextStyle(
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
                                Color(0xFF39B467),
                                Color(0xFFFF736B),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Donate unwanted items such as clothing, furniture, and electronics instead of throwing them away.",style: TextStyle(
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
                        child: Center(child: Text("6",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF39B467),
                                Color(0xFFFF736B),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Use energy-efficient appliances and light bulbs to reduce energy consumption and waste.",style: TextStyle(
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
                                Color(0xFF39B467),
                                Color(0xFFFF736B),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Properly dispose of hazardous materials such as batteries and electronics to prevent environmental pollution.",style: TextStyle(
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
                                Color(0xFF39B467),
                                Color(0xFFFF736B),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Container(
                      width: 290,
                      child: Text("Implement a waste audit to identify areas where waste can be reduced and to track progress over time.",style: TextStyle(
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

              ],
            ),
          ),
        )
    );
  }
}

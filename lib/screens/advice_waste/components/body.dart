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
                SizedBox(height: SizeConfig.screenHeight*0.02,),
                TopBar(text:"            Waste",press: (){},),
                Container(
                  width: 280,
                  height: 280,
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
                  width: 380,
                  height: 60,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40,right: 40),
                        child: Text(" Some advices about waste",style: TextStyle(
                          fontSize: 20,color: Colors.white,),),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: SizeConfig.screenHeight*0.04,),


                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
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
                    Text("Reduce paper usage by going digital and\n using electronic documents wherever\n possible.",style: TextStyle(
                        fontSize: 16
                    ),),
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
                    Text("Implement a recycling program for\n paper, plastic, glass, and metal.",style: TextStyle(
                        fontSize: 16
                    ),),
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
                    Text("Use composting to dispose of organic\n waste such as food scraps and yard\n waste.",style: TextStyle(
                        fontSize: 16
                    ),),
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
                    Text("Encourage the use of reusable containers\n, bottles, and bags to reduce the amount \nof single-use plastics.",style: TextStyle(
                        fontSize: 16
                    ),),
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
                    Text("Donate unwanted items such as clothing,\n furniture, and electronics instead of \nthrowing them away.",style: TextStyle(
                        fontSize: 16
                    ),),
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
                    Text(" Use energy-efficient appliances and \nlight bulbs to reduce energy consumption\n and waste.",style: TextStyle(
                        fontSize: 16
                    ),),
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
                    Text("Properly dispose of hazardous materials\nsuch as batteries and electronics to \nprevent environmental pollution.",style: TextStyle(
                        fontSize: 16
                    ),),
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
                    Text("Implement a waste audit to identify areas\nwhere waste can be reduced and to \ntrack progress over time.",style: TextStyle(
                        fontSize: 16
                    ),),
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

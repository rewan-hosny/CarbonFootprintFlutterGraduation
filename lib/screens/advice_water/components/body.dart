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
                TopBar(text:"            Water",press: (){},),
                Container(
                  width: 280,
                  height: 280,
                  child: Image.asset("assets/images/water.png"),
                ),

                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xFF1CA953),
                          Color(0xFF5DB7F6),
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
                        child: Text(" Some advices about water",style: TextStyle(
                          fontSize: 20,color: Colors.white,),),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: SizeConfig.screenHeight*0.04,),


                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
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
                                Color(0xFF1CA953),
                                Color(0xFF5DB7F6),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Text("Install low-flow toilets, showerheads, \nand faucets to conserve water.",style: TextStyle(
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
                                Color(0xFF1CA953),
                                Color(0xFF5DB7F6),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Text("Repair all leaks promptly and consider\nusing a rainwater harvesting system.",style: TextStyle(
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
                        child: Center(child: Text("3",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF1CA953),
                                Color(0xFF5DB7F6),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Text("Use native plants in landscaping, which\nrequire less watering.",style: TextStyle(
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
                        child: Center(child: Text("4",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF1CA953),
                                Color(0xFF5DB7F6),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Text("Implement a water recycling system to \nreuse water for irrigation or non-potable\nuses.",style: TextStyle(
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
                        child: Center(child: Text("5",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF1CA953),
                                Color(0xFF5DB7F6),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Text("Use automatic shut-off valves or timed\nsystems for irrigation.",style: TextStyle(
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
                        child: Center(child: Text("6",style: TextStyle(color: Colors.white),)),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF1CA953),
                                Color(0xFF5DB7F6),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Text("Choose drought-resistant crops and use\nefficient irrigation methods for \nagriculture.",style: TextStyle(
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
                      padding: const EdgeInsets.only(bottom: 65),
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
                                Color(0xFF1CA953),
                                Color(0xFF5DB7F6),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Text("Encourage behavior change by promote\nwater conservation practices and raising\nawareness about the importance of\nwater conservation.",style: TextStyle(
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
                                Color(0xFF1CA953),
                                Color(0xFF5DB7F6),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Text("Regularly monitor water consumption\nand identify areas where water use can\nbe reduced.",style: TextStyle(
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
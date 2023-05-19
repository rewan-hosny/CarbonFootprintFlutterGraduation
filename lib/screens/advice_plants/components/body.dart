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
  // void initState() {
  //   // TODO: implement initState
  //   color.add(Colors.orange);
  //   color.add(Colors.orange[200]!);
  //   color.add(Colors.orange[100]!);
  //   color.add(Colors.orange[50]!);
  //
  //   final List<double> stops = <double>[];
  //
  //   stops.add(0.0);
  //   stops.add(0.25);
  //   stops.add(0.5);
  //   stops.add(1.0);
  //   gradientColors = LinearGradient(colors: color, stops: stops);
  // }
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
                TopBar(text:"            Plants",press: (){},),
                Container(
                  width: 280,
                  height: 280,
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
                  width: 380,
                  height: 60,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40,right: 40),
                        child: Text(" Some advices about plants",style: TextStyle(
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
                                LightModeMainColor,
                                Color(0xFFB0D735),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Text("Plant trees and shrubs on campus to \nabsorb carbon dioxide from atmosphere.",style: TextStyle(
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
                                LightModeMainColor,
                                Color(0xFFB0D735),
                              ]),),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.025,),
                    Text("Use native plants that require less water\n and fertilizer.",style: TextStyle(
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
                    Text("Consider installing green roofs and walls \nto reduce the urban heat island effect \nand promote plant growth.",style: TextStyle(
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
                    Text("Implement composting programs for \nplant waste and other organic material.",style: TextStyle(
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
                    Text("Use integrated pest management \npractices to reduce using chemical\n pesticides and herbicides.",style: TextStyle(
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
                    Text("Consider using drought-resistant plant\n species that require less water.",style: TextStyle(
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
                    Text("Promote sustainable landscaping \npractices, such as using mulch \nand avoiding over-watering.",style: TextStyle(
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
                    Text("Encourage the use of electric or manual\n gardening tools instead of gas-powered\n ones, which produce emissions.",style: TextStyle(
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
                    Text("Install rainwater collection systems to \nreduce the amount of water needed \nfor irrigation.",style: TextStyle(
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
                SizedBox(height: SizeConfig.screenHeight*0.01,),
              ],
            ),
          ),
        )
    );
  }
}

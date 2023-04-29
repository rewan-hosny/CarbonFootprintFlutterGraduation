import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/home_page/home_page_screen.dart';
import 'package:graduation/size_config.dart';
import '../../../components/bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../articles/article_screen.dart';
import '../../plant1_page/plant1_screen.dart';
import '../../plant2_page/plant2_screen.dart';
import '../../profile/profile_screen.dart';



// class Body extends StatelessWidget {
//   const Body({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: LightModeLightGreenColor,
//
//       floatingActionButton: SizedBox(
//         width: 70,
//         height: 70,
//         child: FloatingActionButton(
//           backgroundColor: Color(0xFFB4B4B4),//edittttttttttttttttttttttttttttttttt
//           splashColor: LightModeMainColor,
//           foregroundColor: Colors.white,
//           elevation: 0,
//           child: Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(top: 10,bottom: 5),
//                 child: Image.asset("assets/images/Icon.png",
//                   width: 25,
//                   height: 25,),
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: Text("Home",
//                   style: TextStyle(fontSize: 9,),),),],),
//           onPressed: () {Navigator.pushNamed(context, HomePageScreen.routeName);},
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         notchMargin: 10,
//         shape: CircularNotchedRectangle(),
//         color: Colors.white,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//
//             Padding(
//               padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   GestureDetector(
//                     onTap: (){},
//                     child: Image.asset("assets/images/icon-park-solid_analysis.png",
//                       width: 25,
//                       height: 25,),),
//                   SizedBox(height: SizeConfig.screenHeight*0.01,),
//                   Text("Regression",
//                     style: TextStyle(
//                       fontSize: 10,
//                       color: LightModeSmallTextColor,
//                     ),)
//                 ],
//               ),),
//
//             Padding(
//               padding: EdgeInsets.only(top: 10,bottom: 10,right: 80),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   GestureDetector(
//                     onTap: (){Navigator.pushNamed(context, Plant1Screen.routeName);},
//                     child: Image.asset("assets/images/Vector.png",
//                       color: Color(0xFF0A7036),
//                       width: 25,
//                       height: 25,),
//                   ),
//                   SizedBox(height: SizeConfig.screenHeight*0.01,),
//                   Text("Plants",
//                     style: TextStyle(
//                       fontSize: 10,
//                       color: LightModeMainColor,
//                     ),)
//                 ],
//               ),),
//
//             Padding(
//               padding: EdgeInsets.only(top: 10,right: 20,bottom: 10),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   GestureDetector(
//                     onTap: (){Navigator.pushNamed(context, ArticlesScreen.routeName);},
//                     child: Image.asset("assets/images/ooui_articles-ltr.png",
//                       width: 25,
//                       height: 25,),
//                   ),
//                   SizedBox(height: SizeConfig.screenHeight*0.01,),
//                   Text("Articles",
//                     style: TextStyle(
//                       fontSize: 10,
//                       color: LightModeSmallTextColor,
//                     ),)
//                 ],
//               ),),
//
//             Padding(
//               padding: EdgeInsets.only(top: 10,bottom: 10,right: 20),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   GestureDetector(
//                     onTap: (){},
//                     child: Image.asset("assets/images/material-symbols_person.png",
//                       width: 25,
//                       height: 25,),),
//                   SizedBox(height: SizeConfig.screenHeight*0.01,),
//                   Text("Profile",
//                     style: TextStyle(
//                       fontSize: 10,
//                       color: LightModeSmallTextColor,
//                     ),)
//                 ],
//               ),),
//           ],
//         ),
//       ),
//
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           children: [
//             SizedBox(height: SizeConfig.screenHeight*0.05,),
//             Row(
//               children: [
//                 SizedBox(
//                   width: getProportionateScreenWidth(40),
//                   height: getProportionateScreenHeight(40),
//                   child: TextButton(
//                     style: TextButton.styleFrom(
//                       shape:
//                       RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                       primary: Colors.white,
//                       backgroundColor: LightModeMainColor,
//                     ),
//                     onPressed: (){Navigator.pushNamed(context, Plant2Screen.routeName);},
//                     child: Image.asset("assets/icons/mdi_arrow-back.png"
//                         ,height: SizeConfig.screenHeight*0.06),
//                   ),
//                 ),
//                 SizedBox(width: SizeConfig.screenWidth*0.25,),
//
//                     Text("Result",
//                       style: TextStyle(
//                           fontSize: 27,
//                           fontFamily: "Poppins",
//                           fontWeight: FontWeight.bold,
//                           color: LightModeSmallTextColor
//                       ),
//                     ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 60, bottom: 40),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 child: Text("Here is your flower :",
//                   style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontFamily: "Poppins",
//                       fontSize: 21,
//                       color:LightModeSmallTextColor
//                   ),),
//               ),
//             ),
//
//             Container(
//               width: 360,
//               height: 250,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 image: DecorationImage(
//                   image: AssetImage(
//                       "assets/images/damagedplant.jpg"),
//                   fit: BoxFit.fill,),
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.only(top: 50),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         width: 30,
//                         height: 30,
//                         child: Image(
//                           image: AssetImage("assets/images/material-symbols_check-circle.png"),),
//                       ),
//                       SizedBox(width: SizeConfig.screenWidth*0.02,),
//                       Row(
//                         children: [
//                           Text("Damage : ",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontFamily: "Poppins",
//                                   fontSize: 22,
//                                   color: LightModeSmallTextColor
//                               )),
//
//                           Text("Yes",
//                           style: TextStyle(
//                             fontFamily: "Poppins3",
//                             fontSize: 22,
//                             color: LightModeMainColor,
//                           ),)
//                         ],
//                       ),
//                     ],),
//
//                   Padding(
//                     padding: const EdgeInsets.only(top: 30),
//                     child: Row(
//                       children: [
//                         Container(
//                           width: 30,
//                           height: 30,
//                           child: Image(
//                             image: AssetImage("assets/images/material-symbols_check-circle.png"),),
//                         ),
//                         SizedBox(width: SizeConfig.screenWidth*0.02,),
//                         Row(
//                           children: [
//                             Text("Classified : ",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontFamily: "Poppins",
//                                     fontSize: 22,
//                                     color: LightModeSmallTextColor
//                                 )),
//
//                             Text("Dandelion",
//                               style: TextStyle(
//                                 fontFamily: "Poppins3",
//                                 fontSize: 22,
//                                 color: LightModeMainColor,
//                               ),)
//                           ],
//                         ),
//                       ],),
//                   ),
//
//                   Padding(
//                     padding: const EdgeInsets.only(top: 30),
//                     child: Row(
//                       children: [
//                         Container(
//                           width: 30,
//                           height: 30,
//                           child: Image(
//                             image: AssetImage("assets/images/material-symbols_check-circle.png"),),
//                         ),
//                         SizedBox(width: SizeConfig.screenWidth*0.02,),
//                         Row(
//                           children: [
//                             Text("Rate : ",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontFamily: "Poppins",
//                                     fontSize: 22,
//                                     color: LightModeSmallTextColor
//                                 )),
//
//                             Text("80%",
//                               style: TextStyle(
//                                 fontFamily: "Poppins3",
//                                 fontSize: 22,
//                                 color: LightModeMainColor,
//                               ),)
//                           ],
//                         ),
//                       ],),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//
//     );
//   }
// }

class Body extends StatefulWidget {
  final String flowerType;
  final String flowerStatus;
  final String ImagePath;
  const Body({Key? key, required this.flowerType, required this.flowerStatus, required this.ImagePath}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightModeLightGreenColor,

      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.grey,//edittttttttttttttttttttttttttttttttt
          splashColor: LightModeMainColor,
          foregroundColor: Colors.white,
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
                  style: TextStyle(fontSize: 9,),),),],),
          onPressed: () {Navigator.pushNamed(context, HomePageScreen.routeName);},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(
        flag1: false,
        flag2: true,
        flag3: false,
        flag4: false,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
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
                      onPressed: (){Navigator.pushNamed(context, Plant2Screen.routeName);},
                      child: Image.asset("assets/icons/mdi_arrow-back.png"
                          ,height: SizeConfig.screenHeight*0.06),
                    ),
                  ),
                  SizedBox(width: SizeConfig.screenWidth*0.25,),

                  Text("Result",
                    style: TextStyle(
                        fontSize: 27,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        color: LightModeSmallTextColor
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 40),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Here is your flower :",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontSize: 21,
                        color:LightModeSmallTextColor
                    ),),
                ),
              ),
SingleChildScrollView(
  child:   Column(
    children: [
      Container(

          width: 360,
          height: 250,

          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(15),
          //   // image: DecorationImage(
          //   //   image: AssetImage("assets/images/damagedplant.jpg"),
          //   //
          //   //
          //   //
          //   //   fit: BoxFit.fill,
          //   //
          //   //
          //   // ),
          //
          // ),
        child: FittedBox(

          fit: BoxFit.fill,
          // child: Image.file(File(widget.ImagePath)),
child: ClipRRect(
  borderRadius: BorderRadius.circular(15.0),
  child: Image.file(File(widget.ImagePath)),
),
        ),
      ),
  
      Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      child: Image(
                        image: AssetImage("assets/images/material-symbols_check-circle.png"),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.02,),
                    Row(
                      children: [
                        Text("Damage : ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                                fontSize: 22,
                                color: LightModeSmallTextColor
                            )),
  
                        Text(""+widget.flowerStatus,
                          style: TextStyle(
                            fontFamily: "Poppins3",
                            fontSize: 22,
                            color: LightModeMainColor,
                          ),)
                      ],
                    ),
                  ],),
  
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        child: Image(
                          image: AssetImage("assets/images/material-symbols_check-circle.png"),),
                      ),
                      SizedBox(width: SizeConfig.screenWidth*0.02,),
                      Row(
                        children: [
                          Text("Classified : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                  fontSize: 22,
                                  color: LightModeSmallTextColor
                              )),
  
                          Text(""+widget.flowerType,
                            style: TextStyle(
                              fontFamily: "Poppins3",
                              fontSize: 22,
                              color: LightModeMainColor,
                            ),)
                        ],
                      ),
                    ],),
                ),
  
                // Padding(
                //   padding: const EdgeInsets.only(top: 30),
                //   child: Row(
                //     children: [
                //       Container(
                //         width: 30,
                //         height: 30,
                //         child: Image(
                //           image: AssetImage("assets/images/material-symbols_check-circle.png"),),
                //       ),
                //       SizedBox(width: SizeConfig.screenWidth*0.02,),
                //       Row(
                //         children: [
                //           Text("Rate : ",
                //               style: TextStyle(
                //                   fontWeight: FontWeight.bold,
                //                   fontFamily: "Poppins",
                //                   fontSize: 22,
                //                   color: LightModeSmallTextColor
                //               )),
                //
                //           Text("80%",
                //             style: TextStyle(
                //               fontFamily: "Poppins3",
                //               fontSize: 22,
                //               color: LightModeMainColor,
                //             ),)
                //         ],
                //       ),
                //     ],),
                // ),
              ],
            ),
          ),
      ),
    ],
  ),
)
       
            ],
          ),
        ),
      ),

    );
  }
}

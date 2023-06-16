import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:graduation/screens/home_page/home_page_screen.dart';
import 'package:graduation/size_config.dart';
import '../../../components/bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../../services/api_service.dart';
import '../../articles/article_screen.dart';
import '../../plant1_page/plant1_screen.dart';
import '../../plant2_page/plant2_screen.dart';
import '../../profile/profile_screen.dart';




class Body extends StatefulWidget {
  final String flowerType;
  final String flowerStatus;
  final String ImagePath;

  const Body({Key? key, required this.flowerType, required this.flowerStatus, required this.ImagePath}) : super(key: key);
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _latitude = '';
  String _longitude = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

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
                        Text("Status : ",
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

                      Visibility(

                        visible: (widget.flowerStatus!="Healthy"),

                        child: Column(
                          children: [
                            Row(
                              children: [

                                Container(
                                  width: 350,
                                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),// Set the width to the screen width
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                  BoxShadow(
                                  color: LightModeLightGreenColor,
                                    offset: const Offset(
                                      5.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),],

                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                    color: LightModeLightGreenColor
                                  ),

                                  child: Text(
                                    "The Flower is damaged. If you want to be positive and take a step, \n"
                                        "provide the location where it is currently located, and  we will handle the situation",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                      fontSize: 15,
                                      color: LightModeSmallTextColor, // Use the appropriate color
                                    ),
                                  ),
                                )


                              ],
                            ),
                            SizedBox(height: SizeConfig.screenHeight*0.05,),
                            Container(
                              height: 70,
                              width: 360,
                              child: ElevatedButton(
                                onPressed: () {
                                  APIService.sendLocationRequest().then((_) async {
                                    Position position = await APIService.getLocation();
                                    setState(() {
                                      _latitude = position.latitude.toString();
                                      _longitude = position.longitude.toString();
                                      print(_latitude);
                                      print(_longitude);
                                    });
                                  }).catchError((error) {
                                    // Handle location retrieval errors
                                    print(error.toString());
                                  });




                                },
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Send Location",
                                        style: TextStyle(fontSize: 22,fontFamily: "Poppins"),),
                                    ]),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(18))),
                                  padding: EdgeInsets.only(right: 40,left: 40),
                                  primary: Colors.white,
                                  backgroundColor: LightModeMainColor,
                                ),
                              ),
                            ),
                          ],
                        ),

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

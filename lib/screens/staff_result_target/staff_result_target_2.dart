import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';

import '../../components/staff_bottom_navigation_bar.dart';
import '../../components/top_bar.dart';
import '../../size_config.dart';
import '../stuff_home_page/stuff_home_page_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
class StaffResultTarget2 extends StatefulWidget {
  const StaffResultTarget2({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  State<StaffResultTarget2> createState() => _StaffResultTarget2State();
}

class _StaffResultTarget2State extends State<StaffResultTarget2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
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
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              TopBar(
                  text: "             Result",
                  press: () {
                    //   Navigator.pushNamed(context, HomeScreen.routeName);
                  }
              ),

              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Align(
                child: Container(

                height : 180,
                  child: Image.asset(
                    "assets/images/s7.png",

                  ),
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Align(
                alignment: Alignment.topCenter,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Target Set For "
                      ,style: TextStyle(
                        fontSize: getProportionateScreenWidth(22),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF474747),

                      ),),
                    Text("2030 "
                      ,style: TextStyle(
                        fontSize: getProportionateScreenWidth(22),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1CA953),

                      ),),
                    Text("!"
                      ,style: TextStyle(
                        fontSize: getProportionateScreenWidth(22),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF474747),

                      ),),

                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
              width: 145,
              height: 191,
                    decoration:BoxDecoration(
                        color: LightModeLightGreenColor, //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                        borderRadius: BorderRadius.only(
                          // topLeft: Radius.circular(10),
                            topLeft: Radius.circular(28),
                            bottomLeft: Radius.circular(28)


                        )

                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Align(
                            alignment: Alignment.topCenter,
                              child: Text(
                                "Predicted",
                                style: TextStyle(
                                  fontSize: getProportionateScreenWidth(22),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF1CA953),

                                ),
                              ),
                          ),
                        ),
                        Divider(
                          height: 1, // Specify the height of the divider line
                          color: Colors.grey, // Specify the color of the divider line
                          thickness: 1, // Specify the thickness of the divider line
                        ),
                        SizedBox(height: SizeConfig.screenHeight * 0.022),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("10000",
                           style: TextStyle(

                                 fontSize: getProportionateScreenWidth(20),
                                 fontFamily: "Poppins",
                                 fontWeight: FontWeight.w400,
                                 color: Color(0xFF474747),


                           ),
                           ),
                           Text("KgCo2",
                           style: TextStyle(

                             fontSize: getProportionateScreenWidth(20),
                             fontFamily: "Poppins",
                             fontWeight: FontWeight.w400,
                             color: Color(0xFF474747),


                           ),
                           )
                         ],
                       )



                      ],
                    ),
                  ),
                  Align(

                    child: Container(
                      width: 24,
                      height: 20,
                      child: SvgPicture.asset(
                        "assets/images/greenforwardArrow.svg",
                      ),
                    ),
                    alignment: Alignment.center,

                  ),
                  Container(
                    width: 145,
                    height: 191,
                    decoration:BoxDecoration(
                        color: LightModeLightGreenColor, //hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                        borderRadius: BorderRadius.only(
                          // topLeft: Radius.circular(10),
                            topRight: Radius.circular(28),
                            bottomRight: Radius.circular(28)


                        )

                    ),
                  child: Column(
                  children: [
                  Padding(
                  padding: const EdgeInsets.all(12.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Target",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(22),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                color: Color(0xFF1CA953),

              ),
            ),
          ),
        ),
        Divider(
          height: 1, // Specify the height of the divider line
          color: Colors.grey, // Specify the color of the divider line
          thickness: 1, // Specify the thickness of the divider line
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.022),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("5000",
              style: TextStyle(

                fontSize: getProportionateScreenWidth(20),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                color: Color(0xFF474747),


              ),
            ),
            Text("KgCo2",
              style: TextStyle(

                fontSize: getProportionateScreenWidth(20),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                color: Color(0xFF474747),


              ),
            )
          ],
        )



        ],
      ),
















                  ),
                ],
              )

            ],
          ),
        ),
      ),
    ));
  }
}

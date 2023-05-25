import 'package:flutter/material.dart';
import 'package:graduation/screens/staff_calculate_solar_panels/staff_calculate_solar_panels.dart';

import '../../../components/staff_bottom_navigation_bar.dart';
import '../../../components/top_bar.dart';
import '../../../constants.dart';
import '../../../models/staff_progress_smartlight_request_model.dart';
import '../../../services/api_service.dart';
import '../../../size_config.dart';
import '../../staff_calculate_smart_lighting/staff_calculate_smart_lighting.dart';
import '../../stuff_home_page/stuff_home_page_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: LightModeSmallTextColor,
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
            Navigator.pushNamed(context, StuffHomePageScreen.routeName);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomStaffNavigationBar(
        flag1: false,
        flag2: true,
        flag3: false,
        flag4: false,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  TopBar(text: "            Result", press: () {
                    Navigator.pushNamed(context, StaffCalculateSmartLightingScreen.routeName);

                  }),
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "  Reduce carbon will be : ",
                      style: TextStyle(
                        fontSize: 22,
                        color: LightModeSmallTextColor,
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  Text(
                    "${widget.data["reducedFootprint"]} kg",
                    style: TextStyle(
                      fontSize: 25,
                      color: LightModeMainColor,
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  Container(
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: LightModeMainColor,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: SizeConfig.screenWidth * 0.02),
                        Transform.scale(
                          scale: 1,
                          child: Checkbox(
                            value: value,
                            onChanged: (bool? value) {
                              setState(() {
                                this.value = value!;
                                if (value == true) {
                                  StaffSmartLightProgressRequestModel model =
                                  StaffSmartLightProgressRequestModel(
                                    progress: true,
                                    add: false,
                                  );
                                  APIService.StaffSmartLightProgress(model);
                                }
                              });
                            },
                            activeColor: LightModeMainColor,
                            checkColor: Colors.white,
                            autofocus: true,
                          ),
                        ),
                        Text(
                          "add to progress",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            color: LightModeMainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.05),
                  Container(
                    width: 370,
                    height: 65,
                    decoration: BoxDecoration(
                      color: LightModeLightGreenColor,
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 20,
                            color: LightModeSmallTextColor,
                            fontWeight: FontWeight.w600,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: '   Some'),
                            TextSpan(text: ' advices ', style: LogInTextStyle),
                            TextSpan(text: 'may help you :'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: Image.asset("assets/images/One.png"),
                          ),
                          Align(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 18,
                                  color: LightModeSmallTextColor,
                                  fontWeight: FontWeight.w500,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '  Look ',
                                      style: TextStyle(color: LightModeMainColor)),
                                  TextSpan(text: ' for a reputable company for '),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "       installation and maintenance.",
                          style: TextStyle(
                            fontSize: 16,
                            color: LightModeSmallTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: Image.asset("assets/images/Two.png"),
                          ),
                          Align(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 18,
                                  color: LightModeSmallTextColor,
                                  fontWeight: FontWeight.w500,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '  Educate ',
                                      style: TextStyle(color: LightModeMainColor)),
                                  TextSpan(text: 'students and staff about the '),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "        benefits of solar panels.",
                          style: TextStyle(
                            fontSize: 17,
                            color: LightModeSmallTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: Image.asset("assets/images/Three.png"),
                          ),
                          Align(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 18,
                                  color: LightModeSmallTextColor,
                                  fontWeight: FontWeight.w500,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '  Ensure ',
                                      style: TextStyle(color: LightModeMainColor)),
                                  TextSpan(text: 'proper maintenance of solar '),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "        panels to keep them functioning \n        efficiently.",
                          style: TextStyle(
                            fontSize: 16,
                            color: LightModeSmallTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.03),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: Image.asset("assets/images/Four.png"),
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 18,
                                color: LightModeSmallTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '  Monitor ',
                                  style: TextStyle(color: LightModeMainColor),
                                ),
                                TextSpan(text: 'your solar panel system'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "        regularly.",
                          style: TextStyle(
                            fontSize: 17,
                            color: LightModeSmallTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: CustomStaffNavigationBar(
          //     flag1: false,
          //     flag2: true,
          //     flag3: false,
          //     flag4: false,
          //   ),
          // ),
        ],
      ),
    );
  }
}

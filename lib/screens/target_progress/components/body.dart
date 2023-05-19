import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../components/staff_bottom_navigation_bar.dart';
import '../../../components/top_bar.dart';
import '../../../constants.dart';
import '../../../models/target_progress_response_model.dart';
import '../../../models/target_progress_response_model.dart';
import '../../../models/target_progress_response_model.dart';
import '../../../services/api_service.dart';
import '../../../size_config.dart';
import '../../home/home_screen.dart';
import '../../stuff_home_page/stuff_home_page_screen.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Map<String, dynamic> SolarPanel= {};
  Map<String, dynamic> SmartLight= {};
  bool value = true;
  bool flag1 = false;
  bool flag2 = false;
  final double progressValue = 0.4;
  final List<Color> color = <Color>[];
  late LinearGradient gradientColors;

  @override
  void initState() {

      //
    // data = {
    //   'numSolarPanels': response.numSolarPanels,
    //   'installationCost': response.installationCost,
    //   'totalCost': response.totalCost,
    // }

      super.initState();
      // TODO: implement initState
      APIService.StaffTargetProgress().then((response) {
        if (response !=null) {
          SolarPanel ={
            "num_panel":response.solarPanel?.solarPanelsNum?.toString(),
            "cost":response.solarPanel?.solarPanelsCost?.toString(),
            "status":response.solarPanel?.status?.toString(),


          };

          SmartLight ={
            "Reduced_Carbon":response.smartLighting?.reducedCarbon?.toString(),
            "status":response.smartLighting?.status?.toString(),};


          print(SolarPanel);
          print(SmartLight);

        }
      });

    // TODO: implement initState
    color.add(Colors.orange);
    color.add(Colors.orange[200]!);
    color.add(Colors.orange[100]!);
    color.add(Colors.orange[50]!);

    final List<double> stops = <double>[];

    stops.add(0.0);
    stops.add(0.25);
    stops.add(0.5);
    stops.add(1.0);
    gradientColors = LinearGradient(colors: color, stops: stops);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: SizedBox(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            backgroundColor: LightModeMainColor,
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
          flag2: false,
          flag3: false,
          flag4: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              TopBar(
                  text: "     Target Progress",
                  press: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  }),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              // SfRadialGauge(
              //     axes: <RadialAxis>[
              //       RadialAxis(
              //           showLabels: false,
              //           showTicks: false,
              //           startAngle: 180,
              //           endAngle: 0,
              //           radiusFactor: 0.7,
              //           canScaleToFit: true,
              //           axisLineStyle: AxisLineStyle(
              //             thickness: 0.1,
              //             color: const Color.fromARGB(30, 0, 169, 181),
              //             thicknessUnit: GaugeSizeUnit.factor,
              //             cornerStyle: CornerStyle.startCurve,
              //           ),
              //           pointers: <GaugePointer>[
              //             RangePointer(
              //                 value: 70,
              //                 width: 0.1,
              //                 sizeUnit: GaugeSizeUnit.factor,
              //                 cornerStyle: CornerStyle.bothCurve)
              //           ],)
              //
              // ]
              //
              // ),
              // CircularGradientProgressBar(
              //   progress: 0.75,
              //   strokeWidth: 10.0,
              //   markerSize: 20.0,
              //   gradientColors: [Colors.blue, Colors.green],
              //   markerColor: Colors.white,
              // ),

              // SfRadialGauge(
              //   axes: <RadialAxis>[
              //     RadialAxis(
              //       minimum: 0,
              //       maximum: 100,
              //       showLabels: false,
              //       showTicks: false,
              //       startAngle: 270,
              //       endAngle: 270,
              //       radiusFactor: 0.8,
              //       axisLineStyle: AxisLineStyle(
              //         thickness: 0.1,
              //         cornerStyle: CornerStyle.startCurve,
              //         gradient: const SweepGradient(colors: <Color>[
              //           Color(0xFF00a9b5),
              //           Color(0xFFa4edeb),
              //         ], stops: <double>[
              //           0.25,
              //           0.75,
              //         ]),
              //       ),
              //       pointers: <GaugePointer>[
              //         MarkerPointer(
              //           value: 700,
              //           markerType: MarkerType.circle,
              //           color: const Color(0xFF87e8e8),
              //         ),
              //       ],
              //       annotations: <GaugeAnnotation>[
              //         GaugeAnnotation(
              //           widget: Text(
              //             "70 %",
              //             style: TextStyle(fontSize: 20),
              //           ),
              //           angle: 90,
              //           positionFactor: 0.5,
              //         ),
              //       ],
              //     )
              //     ])

              // Container(
              //   color: Colors.black,
              //   child: Center(
              //     child: SfRadialGauge(
              //       axes: <RadialAxis>[
              //         RadialAxis(
              //           minimum: 0,
              //           maximum: 1,
              //           showLabels: false,
              //           showTicks: false,
              //           axisLineStyle: AxisLineStyle(
              //             thickness: 0.1,
              //             cornerStyle: CornerStyle.startCurve,
              //             color: Colors.grey[200],
              //             thicknessUnit: GaugeSizeUnit.factor,
              //           ),
              //           pointers: <GaugePointer>[
              //             RangePointer(
              //                 value: progressValue,
              //                 width: 0.1,
              //                 sizeUnit: GaugeSizeUnit.factor,
              //                 cornerStyle: CornerStyle.startCurve,
              //                 gradient: const SweepGradient(colors: <Color>[
              //                   Color(0xFF00a9b5),
              //                   Color(0xFFa4edeb)
              //                 ], stops: <double>[
              //                   0.25,
              //                   0.75
              //                 ])),
              //             MarkerPointer(
              //               value: progressValue,
              //               markerType: MarkerType.circle,
              //               color: const Color(0xFF87e8e8),
              //             )
              //           ],
              //           annotations: <GaugeAnnotation>[
              //             GaugeAnnotation(
              //                 positionFactor: 0.5,
              //                 angle: 90,
              //                 widget: Text(
              //                   '70%',
              //                   style: TextStyle(
              //                       fontSize: 20,
              //                       fontWeight: FontWeight.bold,
              //                       color: Colors.black),
              //                 ))
              //           ],
              //         ),
              //       ],
              //     ),
              //
              //
              //   ),
              // ),

              Container(
                width: 260,
                height: 260,
                child: Stack(
                  children: [
                    SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(
                          minimum: 0,
                          maximum: 1,
                          showLabels: false,
                          showTicks: false,
                          startAngle: 270,
                          endAngle: 270,
                          axisLineStyle: AxisLineStyle(
                            thicknessUnit: GaugeSizeUnit.factor,
                            thickness: 0.17,
                            cornerStyle: CornerStyle.bothFlat,
                            color: Color(0xFFE8F6EE),
                            //thicknessMode: GaugeSizeMode.percentage,
                          ),
                          pointers: <GaugePointer>[
                            RangePointer(
                                value: progressValue,
                                width: 0.17,
                                sizeUnit: GaugeSizeUnit.factor,
                                cornerStyle: CornerStyle.bothCurve,
                                gradient: const SweepGradient(colors: <Color>[
                                  Color(0xFFE8F6EE),
                                  Color(0xFFD8F0E2),
                                  Color(0xFFCCFFDB),
                                  Color(0xFFB7E3C9),
                                  Color(0xFF6BC78F),
                                  Color(0xFF1CA953),
                                ], stops: <double>[
                                  0,
                                  0.125,
                                  0.25,
                                  0.375,
                                  0.5,
                                  0.75
                                ])),
                            // MarkerPointer(
                            //   value: progressValue,
                            //   markerType: MarkerType.circle,
                            //   //color:  Colors.black,
                            // )
                          ],
                          // annotations: <GaugeAnnotation>[
                          //   GaugeAnnotation(
                          //       widget: Text('${(progressValue * 100).toInt()}%',
                          //           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                          //       angle: 90,
                          //       positionFactor: 0.5)
                          // ],
                        ),
                      ],
                    ),
                    Center(
                        child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'You are on track to\nachieve your target !\n',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins2",
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF474747)),
                        children: <TextSpan>[
                          TextSpan(
                            text: '${(progressValue * 100).toInt()}%',
                            style: TextStyle(
                                fontSize: 26,
                                fontFamily: "Poppins2",
                                color: Color(0xFF1CA953)),
                          ),
                          TextSpan(
                            text: '\nKeep',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins2",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF1CA953)),
                          ),
                          TextSpan(
                            text: ' going !',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins2",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF474747)),
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF07401D),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                // color: Color(0xFF07401D),
                width: getProportionateScreenWidth(335),
                height: getProportionateScreenHeight(69),

                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Electricity Projects",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins2",
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (flag1 == false) {
                              flag1 = true;
                            } else if (flag1 == true) {
                              flag1 = false;
                            }
                          });
                        },
                        child: SvgPicture.asset(
                          "assets/new/up_arrow.svg",
                          height: getProportionateScreenHeight(10),
                          width: getProportionateScreenWidth(18),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // Electricity
              Visibility(
                visible: flag1,
                child: Column(
                  children: [
                    SizedBox(height: SizeConfig.screenHeight * 0.008),
                    Column(
                      children: [
                        Container(
                          width: getProportionateScreenWidth(335),
                          height: getProportionateScreenHeight(69),
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
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Solar Panels",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins2",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    "assets/new/up_arrow.svg",
                                    height: getProportionateScreenHeight(10),
                                    width: getProportionateScreenWidth(18),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: getProportionateScreenWidth(335),
                          height: getProportionateScreenHeight(172),
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
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Column(
                              children: [
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.01),
                                Row(
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: 'Your Plan      ',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: "Poppins2",
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF474747)),
                                        children: <TextSpan>[
                                          // TextSpan(
                                          //   text: 'Use :',
                                          //   style: TextStyle(fontSize: 14 ,
                                          //       fontFamily: "Poppins2",
                                          //       fontWeight: FontWeight.w400,
                                          //       color: Color(0xFF474747)
                                          //   ),
                                          // ),
                                          TextSpan(
                                            text: 'Use : ',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins2",
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xFF474747)),
                                          ),
                                          TextSpan(
                                            text: SolarPanel["num_panel"] != null ? '${SolarPanel["num_panel"]}' : '.....',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Poppins2",
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1CA953),
                                            ),
                                          ),

                                          TextSpan(
                                            text: '     cost : ',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins2",
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xFF474747)),
                                          ),
                                          TextSpan(
                                            text: SolarPanel["cost"] != null ? '${SolarPanel["cost"]}\$' : '......',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Poppins2",
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1CA953),
                                            ),
                                          )

                                  ,
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.015),
                                Container(
                                  width: 340,
                                  height: 2,
                                  child: Divider(
                                    color: Colors.grey,
                                    height: 1,
                                    thickness: 1,
                                    // indent: 16,
                                    // endIndent: 16,
                                  ),
                                ),

                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.015),
                                Row(
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text:
                                            'Status                              ',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: "Poppins2",
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF474747)),
                                        children: <TextSpan>[
                                          // TextSpan(
                                          //   text: 'Use :',
                                          //   style: TextStyle(fontSize: 14 ,
                                          //       fontFamily: "Poppins2",
                                          //       fontWeight: FontWeight.w400,
                                          //       color: Color(0xFF474747)
                                          //   ),
                                          // ),

                                          TextSpan(
                                            text: '${SolarPanel["status"]}',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Poppins2",
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF1CA953)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.015),
                                Container(
                                  width: 340,
                                  height: 2,
                                  child: Divider(
                                    color: Colors.grey,
                                    height: 1,
                                    thickness: 1,
                                    // indent: 16,
                                    // endIndent: 16,
                                  ),
                                ),
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.01),
                                Row(
                                  children: [
                                    Text(
                                      'Is Completeed                     ',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: "Poppins2",
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF474747)),
                                    ),
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0))),
                                      value: value,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          this.value = value!;
                                        });
                                      },
                                      activeColor: LightModeMainColor,
                                      checkColor: Colors.white,
                                      autofocus: true,
                                    ),
                                  ],
                                ),
                                //  SizedBox(height: SizeConfig.screenHeight * 0.015),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.01),
                    Column(
                      children: [
                        Container(
                          width: getProportionateScreenWidth(335),
                          height: getProportionateScreenHeight(69),
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
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Smart Lighting System",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins2",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    "assets/new/up_arrow.svg",
                                    height: getProportionateScreenHeight(10),
                                    width: getProportionateScreenWidth(18),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: getProportionateScreenWidth(335),
                          height: getProportionateScreenHeight(160),
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
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Column(
                              children: [
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.01),
                                Row(
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: 'Your Plan     ',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: "Poppins2",
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF474747)),
                                        children: <TextSpan>[
                                          // TextSpan(
                                          //   text: 'Use :',
                                          //   style: TextStyle(fontSize: 14 ,
                                          //       fontFamily: "Poppins2",
                                          //       fontWeight: FontWeight.w400,
                                          //       color: Color(0xFF474747)
                                          //   ),
                                          // ),


                                          TextSpan(
                                            text: 'Reduced_Carbon : ',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins2",
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xFF474747)),
                                          ),
                                          TextSpan(
                                            text: SmartLight["Reduced_Carbon"] != null ? '${SmartLight["Reduced_Carbon"]} kg' : '.....',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Poppins2",
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF1CA953)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.015),
                                Container(
                                  width: 340,
                                  height: 2,
                                  child: Divider(
                                    color: Colors.grey,
                                    height: 1,
                                    thickness: 1,
                                    // indent: 16,
                                    // endIndent: 16,
                                  ),
                                ),

                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.015),
                                Row(
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text:
                                            'Status                              ',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: "Poppins2",
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF474747)),
                                        children: <TextSpan>[
                                          // TextSpan(
                                          //   text: 'Use :',
                                          //   style: TextStyle(fontSize: 14 ,
                                          //       fontFamily: "Poppins2",
                                          //       fontWeight: FontWeight.w400,
                                          //       color: Color(0xFF474747)
                                          //   ),
                                          // ),

                                          TextSpan(
                                            text: SmartLight["status"] != null ? '${SmartLight["status"]}' : '......',

                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Poppins2",
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF1CA953)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.015),
                                Container(
                                  width: 340,
                                  height: 2,
                                  child: Divider(
                                    color: Colors.grey,
                                    height: 1,
                                    thickness: 1,
                                    // indent: 16,
                                    // endIndent: 16,
                                  ),
                                ),
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.015),
                                Row(
                                  children: [
                                    Text(
                                      'Is Completeed                     ',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: "Poppins2",
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF474747)),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFF1CA953),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4))),
                                      width: 60,
                                      height: 24,
                                      child: FittedBox(
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "yes",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                //  SizedBox(height: SizeConfig.screenHeight * 0.015),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFCE5700),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                // color: Color(0xFF07401D),
                width: getProportionateScreenWidth(335),
                height: getProportionateScreenHeight(69),

                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Plants Projects",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins2",
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (flag2 == false) {
                              flag2 = true;
                            } else if (flag2 == true) {
                              flag2 = false;
                            }
                          });
                        },
                        child: SvgPicture.asset(
                          "assets/new/up_arrow.svg",
                          height: getProportionateScreenHeight(10),
                          width: getProportionateScreenWidth(18),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //plants project
              Visibility(
                visible: flag2,
                child: Column(
                  children: [
                    SizedBox(height: SizeConfig.screenHeight * 0.008),
                    Container(
                      width: getProportionateScreenWidth(335),
                      height: getProportionateScreenHeight(69),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFCE5700),
                              Color(0xFFDF8600),
                              Color(0xFFFFA800)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "More Plants",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins2",
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(
                                "assets/new/up_arrow.svg",
                                height: getProportionateScreenHeight(10),
                                width: getProportionateScreenWidth(18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.008),
                    Column(
                      children: [
                        Container(
                          width: getProportionateScreenWidth(335),
                          height: getProportionateScreenHeight(69),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFCE5700),
                                  Color(0xFFDF8600),
                                  Color(0xFFFFA800)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "More Flowers",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins2",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    "assets/new/up_arrow.svg",
                                    height: getProportionateScreenHeight(10),
                                    width: getProportionateScreenWidth(18),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: getProportionateScreenWidth(335),
                          height: getProportionateScreenHeight(172),
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
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Column(
                              children: [
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.01),
                                Row(
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: 'Your Plan      ',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: "Poppins2",
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF474747)),
                                        children: <TextSpan>[
                                          // TextSpan(
                                          //   text: 'Use :',
                                          //   style: TextStyle(fontSize: 14 ,
                                          //       fontFamily: "Poppins2",
                                          //       fontWeight: FontWeight.w400,
                                          //       color: Color(0xFF474747)
                                          //   ),
                                          // ),
                                          TextSpan(
                                            text: 'Use : ',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins2",
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xFF474747)),
                                          ),
                                          TextSpan(
                                            text: '150 Panels',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Poppins2",
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFCE5700)),
                                          ),
                                          TextSpan(
                                            text: '     cost : ',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Poppins2",
                                                fontWeight: FontWeight.w300,
                                                color: Color(0xFF474747)),
                                          ),
                                          TextSpan(
                                            text: '550\$',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Poppins2",
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFCE5700)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.015),
                                Container(
                                  width: 340,
                                  height: 2,
                                  child: Divider(
                                    color: Colors.grey,
                                    height: 1,
                                    thickness: 1,
                                    // indent: 16,
                                    // endIndent: 16,
                                  ),
                                ),

                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.015),
                                Row(
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text:
                                            'Status                              ',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: "Poppins2",
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF474747)),
                                        children: <TextSpan>[
                                          // TextSpan(
                                          //   text: 'Use :',
                                          //   style: TextStyle(fontSize: 14 ,
                                          //       fontFamily: "Poppins2",
                                          //       fontWeight: FontWeight.w400,
                                          //       color: Color(0xFF474747)
                                          //   ),
                                          // ),

                                          TextSpan(
                                            text: 'In Progress',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Poppins2",
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFCE5700)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.015),
                                Container(
                                  width: 340,
                                  height: 2,
                                  child: Divider(
                                    color: Colors.grey,
                                    height: 1,
                                    thickness: 1,
                                    // indent: 16,
                                    // endIndent: 16,
                                  ),
                                ),
                                SizedBox(
                                    height: SizeConfig.screenHeight * 0.01),
                                Row(
                                  children: [
                                    Text(
                                      'Is Completeed                     ',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: "Poppins2",
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF474747)),
                                    ),
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0))),
                                      value: value,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          this.value = value!;
                                        });
                                      },
                                      activeColor: Color(0xFFCE5700),
                                      checkColor: Colors.white,
                                      autofocus: true,
                                    ),
                                  ],
                                ),
                                //  SizedBox(height: SizeConfig.screenHeight * 0.015),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.04),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

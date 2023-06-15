import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/staff_calculate_solar_panels/staff_calculate_solar_panels.dart';
import 'package:graduation/services/api_service.dart';
import 'package:graduation/size_config.dart';
import '../../../components/staff_bottom_navigation_bar.dart';
import '../../../models/Staff_progress_request_model.dart';
import '../../stuff_home_page/stuff_home_page_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Body extends StatefulWidget {
  const Body({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool flag1 = false;
  bool flag2 = false;
  String currentIcon1="assets/new/up_arrow.svg";
  String currentIcon2="assets/new/up_arrow.svg";
  bool value = false;
  // Map<String,String> dates={};
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

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
                  margin: EdgeInsets.only(top: 10,bottom: 5),
                  child: Image.asset("assets/images/Icon.png",
                    width: 25,
                    height: 25,),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Home",
                    style: TextStyle(fontSize: 9,),),),],),
            onPressed: () { Navigator.pushNamed(context, StuffHomePageScreen.routeName); },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomStaffNavigationBar(
          flag1: false,
          flag2: true,
          flag3: false,
          flag4: false,
        ),



        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight*0.04,),
                TopBar(text: "            Result",  press:(){Navigator.pushNamed(context, StaffCalculateSolarPanelsScreen.routeName);}),




                SizedBox(height: SizeConfig.screenHeight*0.05,),


                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Container(
                  width: 300,
                  height: 310,

                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(28, 169, 83, 1),
                          Color.fromRGBO(134, 134, 134, 0.54),
                        ]
                    ),
                    borderRadius: BorderRadius.circular(150),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: SizeConfig.screenHeight*0.11,),

                      Text(
                        "${widget.data["numSolarPanels"]} Panels",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 44,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: SizeConfig.screenHeight*0.04,),
                      Text(
                        "${widget.data["totalCost"]} \$ ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,

                ),
                SizedBox(height: SizeConfig.screenHeight*0.08,),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (flag2 == false) {
                        flag2 = true;
                        currentIcon1="assets/new/bottomArrow.svg";
                      } else if (flag2 == true) {
                        flag2 = false;
                        currentIcon1= "assets/new/up_arrow.svg";
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF12A14A),
                          Color(0xFF12A14A),
                          Color(0xFF12A14A),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    // color: Color(0xFF07401D),
                    width: getProportionateScreenWidth(335),
                    height: getProportionateScreenHeight(70),

                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),

                      child: GestureDetector(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(fontSize: 20,color:Colors.white , fontWeight:FontWeight.w600),
                                children: <TextSpan>[
                                  TextSpan(text: '   Add'),
                                  TextSpan(text: ' to '),
                                  TextSpan(text: 'Progress '),
                                ],
                              ),
                            ),

                            SvgPicture.asset(
                              currentIcon1,
                              height: getProportionateScreenHeight(10),
                              width: getProportionateScreenWidth(18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: flag2,
                  child: Container(
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
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'cost',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "Poppins2",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF474747),
                                    ),
                                  ),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '${widget.data["totalCost"]} \$ ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Poppins2",
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF474747),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "  ",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: "Poppins2",
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF1CA953),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),


                          SizedBox(
                              height: SizeConfig.screenHeight * 0.015),


                  

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


                          Row(
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: 'In progress ',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: "Poppins2",
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF474747),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Transform.scale(
                                scale: 1,
                                child: Checkbox(
                                  value: value,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      this.value = value!;
                                      if (value == true) {
                                        StaffProgressResponseModel model = StaffProgressResponseModel(
                                          progress: true,
                                          add: false,
                                        );
                                        APIService.StaffProgress(model);
                                      }
                                    });
                                  },
                                  activeColor: LightModeMainColor,
                                  checkColor: Colors.white,
                                  autofocus: true,
                                ),
                              ),
                            ],
                          ),

                          //  SizedBox(height: SizeConfig.screenHeight * 0.015),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight*0.03,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (flag1 == false) {
                        flag1 = true;
                        currentIcon1="assets/new/bottomArrow.svg";
                      } else if (flag1 == true) {
                        flag1 = false;
                        currentIcon1= "assets/new/up_arrow.svg";
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [

                          Color(0xFF12A14A),
                          Color(0xFF12A14A),
                          Color(0xFF12A14A),

                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    // color: Color(0xFF07401D),
                    width: getProportionateScreenWidth(335),
                    height: getProportionateScreenHeight(70),

                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),

                      child: GestureDetector(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(fontSize: 20,color:Colors.white , fontWeight:FontWeight.w600),
                                children: <TextSpan>[
                                  TextSpan(text: '   Implementation'),
                                  TextSpan(text: ' Steps '),

                                ],
                              ),
                            ),

                            SvgPicture.asset(
                              currentIcon1,
                              height: getProportionateScreenHeight(10),
                              width: getProportionateScreenWidth(18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: flag1,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: getProportionateScreenWidth(335),
                            height: getProportionateScreenHeight(500),
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
                                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              child: Image.asset("assets/images/One.png"),),
                                            Align(
                                              child: RichText(
                                                text: TextSpan(
                                                  style: TextStyle(fontSize: 18,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),
                                                  children: <TextSpan>[
                                                    TextSpan(text: '  Look ', style: TextStyle(color: LightModeMainColor)),
                                                    TextSpan(text: ' for a reputable company for '),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft, child: Text("       installation and maintenance.",
                                          style: TextStyle(fontSize: 16,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),),)
                                      ],
                                    ),

                                    SizedBox(height: SizeConfig.screenHeight*0.03,),

                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              child: Image.asset("assets/images/One.png"),),
                                            Align(
                                              child: RichText(
                                                text: TextSpan(
                                                  style: TextStyle(fontSize: 18,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),
                                                  children: <TextSpan>[
                                                    TextSpan(text: '  Look ', style: TextStyle(color: LightModeMainColor)),
                                                    TextSpan(text: ' for a reputable company for '),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft, child: Text("       installation and maintenance.",
                                          style: TextStyle(fontSize: 16,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),),)
                                      ],
                                    ),



                                    SizedBox(height: SizeConfig.screenHeight*0.03,),

                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              child: Image.asset("assets/images/Two.png"),),

                                            Align(
                                              child: RichText(
                                                text: TextSpan(
                                                  style: TextStyle(fontSize: 18,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),
                                                  children: <TextSpan>[
                                                    TextSpan(text: '  Educate ', style: TextStyle(color: LightModeMainColor)),
                                                    TextSpan(text: 'students and staff about the ',),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft, child: Text("        benefits of solar panels.",
                                          style: TextStyle(fontSize: 17,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),),)
                                      ],
                                    ),



                                    SizedBox(height: SizeConfig.screenHeight*0.03,),

                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              child: Image.asset("assets/images/Three.png"),),

                                            Align(
                                              child: RichText(
                                                text: TextSpan(
                                                  style: TextStyle(fontSize: 18,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),
                                                  children: <TextSpan>[
                                                    TextSpan(text: '  Ensure ', style: TextStyle(color: LightModeMainColor)),
                                                    TextSpan(text: 'proper maintenance of solar ',),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                            alignment: Alignment.topLeft, child: Text("        panels to keep them functioning \n        efficiently.",
                                          style: TextStyle(fontSize: 16,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),)),
                                      ],
                                    ),



                                    SizedBox(height: SizeConfig.screenHeight*0.03,),

                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              child: Image.asset("assets/images/Four.png"),),

                                            RichText(
                                              text: TextSpan(
                                                style: TextStyle(fontSize: 18,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),
                                                children: <TextSpan>[
                                                  TextSpan(text: '  Monitor ', style: TextStyle(color: LightModeMainColor,),),
                                                  TextSpan(text: 'your solar panel system'),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                            alignment: Alignment.topLeft, child: Text("        regularly.",
                                          style: TextStyle(fontSize: 17,color: LightModeSmallTextColor,fontWeight: FontWeight.w500),)),
                                      ],
                                    ),

                                  ],
                                ),

                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

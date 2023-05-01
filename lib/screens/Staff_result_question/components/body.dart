import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:graduation/screens/plant1_page/plant1_screen.dart';
import 'package:graduation/screens/questions/components/question_one.dart';
import 'package:graduation/size_config.dart';
import '../../../components/bottom_navigation_bar.dart';
import '../../../components/staff_bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../articles/article_screen.dart';
import '../../contact_us/contact_screen.dart';
import '../../home/home_screen.dart';
import '../../intro_questions/intro_questions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class Body extends StatelessWidget {
  const Body({Key? key, required this.answersData}) : super(key: key);
  final Map<dynamic,dynamic> answersData ;
  final double percentage = 0.7;
  final double percentage_2=0.5;
  final Color lightModeMainColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(243, 242, 242, 0.42)
      ,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor:
          LightModeMainColor, //edittttttttttttttttttttttttttttttttt
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
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomStaffNavigationBar(
        flag1: false,
        flag2: false,
        flag3: false,
        flag4: false,
      ),








      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.zero,
          child: Stack(children: [

            Container(
              padding: EdgeInsets.only(top:50),
              alignment: Alignment.center,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Your Result",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontFamily: "Poppins2",
                      fontWeight: FontWeight.bold),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,// يتم جعل ارتفاع الـ Container يعتمد على ارتفاع الشاشة
              decoration: BoxDecoration(
                color: Color(0xFF1CA953),
              ),
            ),

//الكونتينر خلصان
            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(

                  padding: EdgeInsets.only(left: 15, top: 15),
                  margin: EdgeInsets.only(top: 100),
                  width: 370,
                  height:MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                      AssetImage("assets/images/group_14.jpeg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,),
                  child: Column (
                    children: [
                      SizedBox(height: SizeConfig.screenHeight*0.010,),
                      Text("Thanks!",
                        style: TextStyle(
                            color: Color(0xFF1CA953),
                            fontSize: 22,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600),),
                      SizedBox(height: SizeConfig.screenHeight*0.01,
                        width: double.infinity,),

                      Container(
                        padding: EdgeInsets.only(right: 10,left: 10),
                        width: double.infinity,
                        child: Center(
                          child: Text("Your university Carbon Footprint for this year is ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF474747),
                                fontSize: 19,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(height: SizeConfig.screenHeight*0.02,),
                      Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                LightModeMainColor,
                                Color(0xFFA3D0A6),
                              ]
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),


                        child: Text(""+answersData["uniCalc result"]+" kg", //edittttttttttttttttt
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600),),
                        alignment: Alignment.center,
                      ),


                      SizedBox(height: SizeConfig.screenHeight*0.01,),

                    ],
                  ),
                ),

              ),


            ),
            //الكونتينر خلصان


            Container(
              margin: EdgeInsets.all(22),
              child: Column(

                children: [
                  SizedBox(height: SizeConfig.screenHeight*0.50,),

                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Based on Your Emissions :",
                      style: TextStyle(
                        color: Color.fromRGBO(71, 71, 71, 0.9),
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,),),
                    alignment: Alignment.bottomLeft,
                  ),
                  SizedBox(height: SizeConfig.screenHeight*0.03,),
//خلصااان
                  Container(
                    width: SizeConfig.screenWidth,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFE2FBD7),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: CircularPercentIndicator(
                                  radius: 60,
                                  lineWidth: 10,
                                  percent: percentage,
                                  backgroundColor: Color(0xFFE2FBD7),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Color(0xFF34B53A),
                                  center: Text(
                                    "${(percentage * 100).toStringAsFixed(0)}%",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: "normal",
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Electricity",
                                style: TextStyle(
                                  color: Color(0xFF1CA953),
                                  fontSize: 15,
                                  height: 22 / 15,
                                  fontFamily: "Poppins",
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(239, 132, 55, 0.2),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: CircularPercentIndicator(
                                  radius: 60,
                                  lineWidth: 10,
                                  percent: percentage_2,
                                  backgroundColor: Color.fromRGBO(239, 132, 55, 0.2),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Color.fromRGBO(239, 132, 55, 0.85),
                                  center: Text(
                                    "${(percentage_2 * 100).toStringAsFixed(0)}%",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: "normal",
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Gas",
                                style: TextStyle(
                                  color: Color(0xFFEF8437),
                                  fontSize: 15,
                                  height: 22 / 15,
                                  fontFamily: "Poppins",
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.016),
                  InkWell(
                    onTap: () {
                      // button action
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(color: Color(0xFF34B53A), width: 2),
                        color: Color(0x00000000),
                      ),
                      child: Text(
                        'Make a Change !',
                        style: TextStyle(
                          color: Color(0xFF34B53A),
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,),
                      ),
                    ),
                  )

















                ],
              ),
            ),


            Container(

              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  width: 370,
                  height: 400,
                  margin: EdgeInsets.only(top: 1070),
                  color: LightModeLightGreenColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Other Links",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: LightModeSmallTextColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.03,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Container(
                              width: 370,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFF31AC53),
                                        Color(0xFF4EE37C),
                                      ])),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 10),
                                    child: Text(
                                      "Carbonite settings  ➞",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 5),
                                    child: Text(
                                      "Edit your information",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ContactScreen.routeName);
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 370,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFF31AC53),
                                        Color(0xFF4EE37C),
                                      ])),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 10),
                                    child: Text(
                                      "Contact Us  ➞",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 5),
                                    child: Text(
                                      "Send Us your feedback",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ArticlesScreen.routeName);
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 370,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFF31AC53),
                                        Color(0xFF4EE37C),
                                      ])),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 10),
                                    child: Text(
                                      "Sources and Recognition  ➞",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 5),
                                    child: Text(
                                      "Read Our Acknowledgments",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),


          ]),

        ),
      ),
    );
  }
  double _calculateBorderWidth(double percentage) {
    return percentage <= 0 ? 0 : (percentage / 100) * 14;
  }
}

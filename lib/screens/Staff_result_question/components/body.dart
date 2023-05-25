import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:graduation/screens/plant1_page/plant1_screen.dart';
import 'package:graduation/screens/questions/components/question_one.dart';
import 'package:graduation/screens/stuff_home_page/stuff_home_page_screen.dart';
import 'package:graduation/size_config.dart';
import '../../../components/bottom_navigation_bar.dart';
import '../../../components/staff_bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../../models/uni_calc_response_model.dart';
import '../../articles/article_screen.dart';
import '../../contact_us/contact_screen.dart';
import '../../home/home_screen.dart';
import '../../intro_questions/intro_questions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';



class Body extends StatefulWidget {
  const Body({Key? key, required this.answersData, this.largestValues}) : super(key: key);
  final Map<dynamic,dynamic> answersData ;
  final  LargestValues? largestValues;


  final double percentage = 0.7;
  final double percentage_2=0.5;
  final bool _isVisible = true;
  final double _fontSize = 22.0;
  final bool _isScaledUp = false;

  final Color lightModeMainColor = Colors.blue;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    // TODO: implement initState
    print("test");
    print(widget.largestValues);


  }
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
          Colors.grey, //edittttttttttttttttttttttttttttttttt
          elevation: 0,
          // splashColor: LightModeMainColor,
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
                  height:MediaQuery.of(context).size.height * 0.40,
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
                    width: 170,
                    height: 170,
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
                    child: Text(
                      "" + widget.answersData["uniCalc result"] + " kg",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
                  SizedBox(height: SizeConfig.screenHeight*0.55,),

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
                                  percent:double.parse((widget.largestValues?.data?.values?.elementAt(0)))/100,
                                  animation: true,
                                  animationDuration: 3000,
                                  backgroundColor: Color(0xFFE2FBD7),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Color(0xFF34B53A),
                                  center: Text(
                                    "${(widget.largestValues?.data?.values?.elementAt(0) ?? "default key")}%",
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

                                    "${(widget.largestValues?.data?.keys?.elementAt(0) ?? "default key")}"


                                ,



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
                                  percent: double.parse((widget.largestValues?.data?.values?.elementAt(1)))/100,
                                  animation: true,
                                  animationDuration: 3000,
                                  backgroundColor: Color.fromRGBO(239, 132, 55, 0.2),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Color.fromRGBO(239, 132, 55, 0.85),
                                  center: Text(
                                    "${(widget.largestValues?.data?.values?.elementAt(1) ?? "default value")}%",
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
                                "${(widget.largestValues?.data?.keys?.elementAt(1) ?? "default key")}",
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
                  ),


                  SizedBox(height: SizeConfig.screenHeight * 0.036),














                ],
              ),
            ),





          ]),

        ),
      ),
    );
  }
  
}

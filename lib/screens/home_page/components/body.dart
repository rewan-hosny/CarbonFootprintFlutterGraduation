import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:graduation/screens/plant1_page/plant1_screen.dart';
import 'package:graduation/screens/questions/components/question_one.dart';
import 'package:graduation/size_config.dart';
import '../../../components/bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../../models/target_progress_response_model.dart';
import '../../../services/api_service.dart';
import '../../articles/article_screen.dart';
import '../../contact_us/contact_screen.dart';
import '../../home/home_screen.dart';
import '../../intro_questions/intro_questions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool flag1=false;
  bool value = true;
  Map<String, dynamic> SmartLight= {};
  Map<String, dynamic> SolarPanel= {};
  double? totalCarbon;
  String? MaxValue;
  String currentIcon1="assets/new/up_arrow.svg";


  void initState() {
    super.initState();
    // TODO: implement initState
    APIService.GetCarbonEmissionInProfile().then((response) {
      if (response!= null) {
        totalCarbon=response.totalCarbon;
        MaxValue=response.maxValue;



        print(totalCarbon);




      }
    });
  }
  @override



  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: LightModeLightGreenColor,

      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: LightModeMainColor,//edittttttttttttttttttttttttttttttttt
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
          onPressed: () {  },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(
        flag1: false,
        flag2: false,
        flag3: false,
        flag4: false,
      ),



      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text("Welcome to you !",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontFamily: "Poppins2",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      padding: EdgeInsets.only(top: 60 ),
                      height: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                        color: Color(0xFF1CA953),
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        padding: EdgeInsets.only(left: 15,top: 25),
                        margin: EdgeInsets.only(top: 110),
                        width: 370,
                        height: 265,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Try these steps next!",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Poppins",
                                        fontSize: 20,
                                        color: LightModeMainColor
                                    ),),],),

                              SizedBox(height: SizeConfig.screenHeight*0.03,),

                              GestureDetector(
                                onTap: (){Navigator.pushNamed(context, IntroScreen.routeName);},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 30,
                                          height: 30,
                                          child: Image(
                                            image: AssetImage("assets/images/carbon_text-link-analysis.png"),),
                                        ),
                                        SizedBox(width: SizeConfig.screenWidth*0.02,),
                                        Text("Your Carbon emission",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Poppins",
                                                fontSize: 15,
                                                color: LightModeSmallTextColor
                                            )),
                                      ],),
                                    Container(
                                      margin: EdgeInsets.only(right: 16),
                                      width: 25,
                                      height: 25,
                                      child: Image(
                                        image: AssetImage("assets/images/material-symbols_check-circle.png"),),
                                    ),],
                                ),
                              ),
                              SizedBox(height: SizeConfig.screenHeight*0.035,),

                              GestureDetector(
                                onTap: (){Navigator.pushNamed(context, ArticlesScreen.routeName);},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 30,
                                          height: 30,
                                          child: Image(
                                            image: AssetImage("assets/images/fxemoji_clap.png"),),
                                        ),
                                        SizedBox(width: SizeConfig.screenWidth*0.02,),
                                        Text("articles about carbon emission",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Poppins",
                                                fontSize: 15,
                                                color: LightModeSmallTextColor
                                            )),
                                      ],),

                                    Container(
                                      margin: EdgeInsets.only(right: 11),
                                      width: 32,
                                      height: 32,
                                      child: Image(
                                        image: AssetImage("assets/images/ic_twotone-navigate-next.png"),),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: SizeConfig.screenHeight*0.035,),

                              GestureDetector(
                                onTap: (){Navigator.pushNamed(context, Plant1Screen.routeName);},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 30,
                                          height: 30,
                                          child: Image(
                                            image: AssetImage("assets/images/material-symbols_image-search-rounded.png"),),
                                        ),
                                        SizedBox(width: SizeConfig.screenWidth*0.02,),
                                        Text("Scan plants to detect damage",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Poppins",
                                                fontSize: 15,
                                                color: LightModeSmallTextColor
                                            )),
                                      ],),

                                    Container(
                                      margin: EdgeInsets.only(right: 11),
                                      width: 32,
                                      height: 32,
                                      child: Image(
                                        image: AssetImage("assets/images/ic_twotone-navigate-next.png"),),
                                    ),
                                  ],
                                ),
                              ),
                            ]) ,

                      ),
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.2),




                  ]
              ),

              SizedBox(height: SizeConfig.screenHeight * 0.02),
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
                  color: Color(0xFF31AC53),

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
                          "Carbon Results",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Poppins2",
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        GestureDetector(

                          child: SvgPicture.asset(
                            currentIcon1,
                            height: getProportionateScreenHeight(10),
                            width: getProportionateScreenWidth(18),
                          ),
                        )
                      ],
                    ),
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
                                  begin: Alignment.centerLeft ,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFF31AC53),
                                    Color(0xFF4EE37C),
                                  ]
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
                                  "Your Results",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins2",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: getProportionateScreenWidth(335),
                          height: getProportionateScreenHeight(130),
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
                                        text:
                                        'Yor carbon emissions               ',
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
                                            text: '${totalCarbon} kgCo2',
                                            style: TextStyle(
                                                fontSize: 12,
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
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text:
                                        'Yor largest emission                  ',
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
                                            text: '${MaxValue}',
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
                                //  SizedBox(height: SizeConfig.screenHeight * 0.015),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.01),

                  ],
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text("Carbon Emissions Tracker:",
                  style: TextStyle(
                      color: LightModeMainColor,
                      fontSize: 22,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),),
              ),




              Container(
                padding: EdgeInsets.only(left: 10,top: 25),
              // margin: EdgeInsets.only(top: 30,right: 15,left: 15),
                width: 370,
                height: 260,
                decoration: BoxDecoration(
                  color: Color(0xFFC9E5D4),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Image(image: AssetImage("assets/images/Image.png"),),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.02,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(

                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              color: Color(0xFFFFC9C0),
                            ),
                            SizedBox(width: SizeConfig.screenWidth*0.02,),
                            Text("Energy",
                              style: TextStyle(
                                color: LightModeSmallTextColor,
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),)
                          ],
                        ),
                        SizedBox(height: SizeConfig.screenWidth*0.08,),

                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              color: Color(0xFF45F6D4),
                            ),
                            SizedBox(width: SizeConfig.screenWidth*0.02,),
                            Text("Waste",
                              style: TextStyle(
                                color: LightModeSmallTextColor,
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),)
                          ],
                        ),
                        SizedBox(height: SizeConfig.screenWidth*0.08,),

                        Container(
                          padding: EdgeInsets.only(top: 10,bottom: 10,left: 8,right: 27),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            color: Color(0xFF313131),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                color: Color(0xFFFE7070),
                              ),
                              SizedBox(width: SizeConfig.screenWidth*0.02,),
                              Text("Electricity",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                ),)
                            ],
                          ),
                        ),
                        SizedBox(height: SizeConfig.screenWidth*0.08,),

                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              color: Color(0xFFD1F5A6),
                            ),
                            SizedBox(width: SizeConfig.screenWidth*0.02,),
                            Text("Food",
                              style: TextStyle(
                                color: LightModeSmallTextColor,
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),)
                          ],
                        ),
                      ],
                    )
                  ],
                ),),



              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Container(
                  width: 370,
                  height: 290,
                  color: LightModeLightGreenColor,
                 // margin: EdgeInsets.only(top: 770),
                  child: Column(
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("World Emissions",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  color: LightModeMainColor,
                                ),),
                              Text("9245 kg",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins3",
                                  color: LightModeSmallTextColor,
                                ),),
                              // LinearProgressIndicator(
                              //   value: 50,
                              //   color: Colors.green,
                              // )

                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                width: 340,
                                height: 7,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child:
                                  // GradientProgressIndicator(
                                  //   gradient: LinearGradient(
                                  //       begin: Alignment.centerLeft,
                                  //       end: Alignment.centerRight,
                                  //       colors: [
                                  //         LightModeMainColor,
                                  //        Color(0xFFA3D0A6),
                                  //       ]),
                                  //   value: 0.8,
                                  // ),
                                  LinearProgressIndicator(
                                    value: 0.8,
                                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF1CA953)),
                                    backgroundColor: Color(0xFF494451),
                                  ),
                                ),
                              )
                            ],

                          )
                        ],
                      ),

                      SizedBox(height: SizeConfig.screenHeight*0.02,),

                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Egypt Emissions",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  color: LightModeMainColor,
                                ),),
                              Text("122 kg",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins3",
                                  color: LightModeSmallTextColor,
                                ),),
                              // LinearProgressIndicator(
                              //   value: 50,
                              //   color: Colors.green,
                              // )

                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                width: 340,
                                height: 7,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child:
                                  // GradientProgressIndicator(
                                  //   gradient: LinearGradient(
                                  //       begin: Alignment.centerLeft,
                                  //       end: Alignment.centerRight,
                                  //       colors: [
                                  //         LightModeMainColor,
                                  //        Color(0xFFA3D0A6),
                                  //       ]),
                                  //   value: 0.6,
                                  // ),
                                  LinearProgressIndicator(
                                    value: 0.6,
                                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF1CA953)),
                                    backgroundColor: Color(0xFF494451),
                                  ),
                                ),
                              )
                            ],

                          )
                        ],
                      ),

                      SizedBox(height: SizeConfig.screenHeight*0.02,),

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Suez Emissions",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  color: LightModeMainColor,
                                ),),
                              Text("14 kg",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins3",
                                  color: LightModeSmallTextColor,
                                ),),
                              // LinearProgressIndicator(
                              //   value: 50,
                              //   color: Colors.green,
                              // )

                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                width: 340,
                                height: 7,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child:
                                  // GradientProgressIndicator(
                                  //   gradient: LinearGradient(
                                  //       begin: Alignment.centerLeft,
                                  //       end: Alignment.centerRight,
                                  //       colors: [
                                  //         LightModeMainColor,
                                  //        Color(0xFFA3D0A6),
                                  //       ]),
                                  //   value: 0.8,
                                  // ),
                                  LinearProgressIndicator(
                                    value: 0.5,
                                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF1CA953)),
                                    backgroundColor: Color(0xFF494451),
                                  ),
                                ),
                              )
                            ],

                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),




              Container(
                width: 370,
                height: 400,
               // margin: EdgeInsets.only(top: 1070),
                color: LightModeLightGreenColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Other Links",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: LightModeSmallTextColor,
                          ),),
                      ],
                    ),

                    SizedBox(height: SizeConfig.screenHeight*0.03,),

                    GestureDetector(
                      onTap: (){},
                      child: Row(
                        children: [
                          Container(
                            width: 370,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft ,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFF31AC53),
                                      Color(0xFF4EE37C),
                                    ]
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10,top: 10),
                                  child: Text("Carbonite settings  ➞",
                                    style: TextStyle(
                                      fontFamily: "Poppins3",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10,top: 5),
                                  child: Text("Edit your information",
                                    style: TextStyle(
                                      fontFamily: "Poppins3",
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: SizeConfig.screenHeight*0.02,),

                    GestureDetector(
                      onTap: (){
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
                                    begin: Alignment.centerLeft ,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFF31AC53),
                                      Color(0xFF4EE37C),
                                    ]
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10,top: 10),
                                  child: Text("Contact Us  ➞",
                                    style: TextStyle(
                                      fontFamily: "Poppins3",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10,top: 5),
                                  child: Text("Send Us your feedback",
                                    style: TextStyle(
                                      fontFamily: "Poppins3",
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: SizeConfig.screenHeight*0.02,),

                    GestureDetector(
                      onTap: (){
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
                                    begin: Alignment.centerLeft ,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFF31AC53),
                                      Color(0xFF4EE37C),
                                    ]
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10,top: 10),
                                  child: Text("Sources and Recognition  ➞",
                                    style: TextStyle(
                                      fontFamily: "Poppins3",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10,top: 5),
                                  child: Text("Read Our Acknowledgments",
                                    style: TextStyle(
                                      fontFamily: "Poppins3",
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),),
                                ),
                              ],
                            ),
                          )
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
    );
  }
}


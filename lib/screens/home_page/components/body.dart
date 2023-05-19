import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:graduation/screens/plant1_page/plant1_screen.dart';
import 'package:graduation/screens/questions/components/question_one.dart';
import 'package:graduation/size_config.dart';
import '../../../components/bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../articles/article_screen.dart';
import '../../contact_us/contact_screen.dart';
import '../../home/home_screen.dart';
import '../../intro_questions/intro_questions.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
          child: Stack(
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


                Padding(
                  padding: const EdgeInsets.only(top: 430 , left: 20,right: 20,bottom: 20),
                  child: Text("Carbon Emissions Tracker:",
                    style: TextStyle(
                        color: LightModeMainColor,
                        fontSize: 22,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold),),

                ),




                Container(
                  padding: EdgeInsets.only(left: 10,top: 25),
                  margin: EdgeInsets.only(top: 480,right: 15,left: 15),
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
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: 370,
                    height: 290,
                    color: LightModeLightGreenColor,
                    margin: EdgeInsets.only(top: 770),
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




                Padding(
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
                  ),)
              ]
          ),
        ),
      ),
    );
  }
}

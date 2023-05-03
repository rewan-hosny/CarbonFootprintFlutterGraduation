import 'package:flutter/material.dart';

import '../../../components/bottom_navigation_bar.dart';
import '../../../components/top_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../home/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
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
          onPressed: () {  },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(flag1: false,
        flag2: false,
        flag3: false,
        flag4: false,
      ),

      body: Padding(
          padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              TopBar(
                  text: "     Electricity Project",
                  press: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  }
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              GestureDetector(
                  onTap: () async {

                    //  Navigator.pushNamed(context, SignInScreen.routeName);
                  },
                  child: Text(
                    "Choose ",

                    style:  TextStyle(
                        fontSize: getProportionateScreenWidth(26),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        color: LightModeMainColor

                    ),
                  )),

              Text("The  Project :", style: TextStyle(
                fontSize: getProportionateScreenWidth(25),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                color: LightModeSmallTextColor,
              )),
            ],
          ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Container(
                width: SizeConfig.screenWidth * 0.9,
                height: SizeConfig.screenHeight * 0.3,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            //  Radius.circular(10.0)
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),

                          ),
                          image: DecorationImage(
                              image: AssetImage("assets/images/Rectangle 18831 (1).png"),
                              fit: BoxFit.cover),//
                        ),
                        child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 20,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Solar Panels", style:
                                  TextStyle(
                                      fontSize: getProportionateScreenWidth(22),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white

                                  )
                                      ,
                                      textAlign: TextAlign.center
                                  ),
                                  Text("Solar power, wind power",style:
                                  TextStyle(
                                      fontSize: getProportionateScreenWidth(14),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white

                                  ),
                                    textAlign: TextAlign.center




                                    ,),

                                ],
                              ),
                            )
                            ,
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  child: SvgPicture.asset("assets/images/forwardArrow.svg",height: getProportionateScreenWidth(15),width:getProportionateScreenWidth(15) ,

                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Color(0xFFF5F5F5),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:8.0),
                                    child: Container(
                                      width: 20,
                                      height: 20,

                                      child: SvgPicture.asset("assets/images/checkboxsvg.svg"),
                                    ),
                                  ),
                                  Text("Solar energy is a renewable energy",style:  TextStyle(
                                      fontSize: getProportionateScreenWidth(14),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF363636
                                      )

                                  ),)


                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:8.0),
                                    child: Container(
                                      width: 20,
                                      height: 20,

                                      child: SvgPicture.asset("assets/images/checkboxsvg.svg"),
                                    ),
                                  ),
                                  Text("Reduces carbon emissions",style:  TextStyle(
                                      fontSize: getProportionateScreenWidth(14),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF363636
                                      )

                                  ),)


                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:8.0),
                                    child: Container(
                                      width: 20,
                                      height: 20,

                                      child: SvgPicture.asset("assets/images/checkboxsvg.svg"),
                                    ),
                                  ),
                                  Text("Reduce your home’s electricity bill",style:  TextStyle(
                                      fontSize: getProportionateScreenWidth(14),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF363636
                                      )

                                  ),)


                                ],
                              ),

                            ],
                          ),
                        ),





                      ),
                    )

                  ],

                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              Container(
                width: SizeConfig.screenWidth * 0.9,
                height: SizeConfig.screenHeight * 0.3,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            //  Radius.circular(10.0)
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),

                          ),
                          image: DecorationImage(
                              image: AssetImage("assets/images/Rectangle 18831.png"),
                              fit: BoxFit.cover),//
                        ),
                        child: Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 20,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Smart Lighting", style:
                                  TextStyle(
                                      fontSize: getProportionateScreenWidth(22),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white

                                  )
                                      ,
                                      textAlign: TextAlign.center
                                  ),
                                  Text("Save Energy, More Secure",style:
                                  TextStyle(
                                      fontSize: getProportionateScreenWidth(14),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white

                                  ),
                                    textAlign: TextAlign.center




                                    ,),

                                ],
                              ),
                            )
                            ,
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  child: SvgPicture.asset("assets/images/forwardArrow.svg",height: getProportionateScreenWidth(15),width:getProportionateScreenWidth(15) ,

                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Color(0xFFF5F5F5),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:8.0),
                                    child: Container(
                                      width: 20,
                                      height: 20,

                                      child: SvgPicture.asset("assets/images/checkboxsvg.svg"),
                                    ),
                                  ),
                                  Text("Smart lights can lower energy use",style:  TextStyle(
                                      fontSize: getProportionateScreenWidth(14),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF363636
                                      )

                                  ),)


                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:8.0),
                                    child: Container(
                                      width: 20,
                                      height: 20,

                                      child: SvgPicture.asset("assets/images/checkboxsvg.svg"),
                                    ),
                                  ),
                                  Text("Has longer life span",style:  TextStyle(
                                      fontSize: getProportionateScreenWidth(14),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF363636
                                      )

                                  ),)


                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:8.0),
                                    child: Container(
                                      width: 20,
                                      height: 20,

                                      child: SvgPicture.asset("assets/images/checkboxsvg.svg"),
                                    ),
                                  ),
                                  Text("Smart lights can Increase security",style:  TextStyle(
                                      fontSize: getProportionateScreenWidth(14),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF363636
                                      )

                                  ),)


                                ],
                              ),

                            ],
                          ),
                        ),





                      ),
                    )

                  ],

                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

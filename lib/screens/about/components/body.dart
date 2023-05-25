import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/articles/article_screen.dart';
import 'package:graduation/screens/home_page/home_page_screen.dart';
import 'package:graduation/screens/plant1_page/plant1_screen.dart';
import 'package:graduation/screens/regression1_page/regression1_screen.dart';

import '../../../components/bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

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
                  width: getProportionateScreenWidth(25),
                  height: getProportionateScreenHeight(25),),
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
      bottomNavigationBar: CustomNavigationBar(
        flag1: false,
        flag2: false,
        flag3: false,
        flag4: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
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
                      onPressed: (){Navigator.pushNamed(context, HomePageScreen.routeName);},
                      child: Image.asset("assets/icons/mdi_arrow-back.png"
                          ,height: SizeConfig.screenHeight*0.06),
                    ),
                  ),
                  SizedBox(width: SizeConfig.screenWidth*0.2,),

                  Text("About Us",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(23),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        color: LightModeSmallTextColor
                    ),
                  ),
                ],
              ),

              SizedBox(height: SizeConfig.screenHeight*0.06,),
              Row(
                children: [
                  Text("Why ",style: TextStyle(
                    fontSize: getProportionateScreenWidth(22),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color:LightModeSmallTextColor,
                  ),),
                  Text("Carbonite ",style: TextStyle(
                    fontSize: getProportionateScreenWidth(22),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color: LightModeMainColor,
                  ),),
                  Text("App ?",style: TextStyle(
                    fontSize: getProportionateScreenWidth(22),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    color:LightModeSmallTextColor,
                  ),),
                ],
              ),

              SizedBox(height: SizeConfig.screenHeight*0.04,),
              Container(
                width: getProportionateScreenWidth(350),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 70),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: LightModeMainColor,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.015,),
                    Container(
                      width: getProportionateScreenWidth(300),
                      child: Text("Our carbon footprint app is designed to help individuals and businesses track and reduce their carbon footprint.",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(17),
                          fontFamily: "Poppins3",
                          color: LightModeSmallTextColor,
                        ),),),
                  ],
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.03,),
              Container(
                width: getProportionateScreenWidth(350),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 120),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: LightModeMainColor,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.015,),
                    Container(
                      width: getProportionateScreenWidth(300),
                      child: Text("We created this app to help people understand the impact of their daily choices on the environment and encourage them to make more sustainable choices. ",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(17),
                          fontFamily: "Poppins3",
                          color: LightModeSmallTextColor,
                        ),),),
                  ],
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.03,),
              Container(
                width: getProportionateScreenWidth(350),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 70),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: LightModeMainColor,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth*0.015,),
                    Container(
                      width: getProportionateScreenWidth(300),
                      child: Text("We help in reducing your impact on the environment, saving money on energy bills, and contributing to a more sustainable future.",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(17),
                          fontFamily: "Poppins3",
                          color: LightModeSmallTextColor,
                        ),),),
                  ],
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.02,),
            ],
          ),
        ),
      ),
    );
  }
}

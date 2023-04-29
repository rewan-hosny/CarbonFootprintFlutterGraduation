
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/bottom_navigation_bar.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/articles/article_screen.dart';
import 'package:graduation/screens/intro_questions/intro_questions.dart';
import 'package:graduation/screens/plant1_page/plant1_screen.dart';
import 'package:graduation/size_config.dart';

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
                          Text("Calculate university emissions",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins",
                                  fontSize: 17,
                                  color: LightModeSmallTextColor
                              )),                                      //linkkkkkkkkkkkkkkk
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
                          Text("Read articles you already do",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins",
                                  fontSize: 17,
                                  color: LightModeSmallTextColor
                              )),                                  //linkkkkkkkkkkkkkkkkkkk
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
                          Text("Projects to reduce Co2 footprint",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins",
                                  fontSize: 17,
                                  color: LightModeSmallTextColor
                              )),                                   //linkkkkkkkkkkkkkkkkk
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
]
    )

      )
      )
    );
  }
}

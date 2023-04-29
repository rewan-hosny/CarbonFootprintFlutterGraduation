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

      // floatingActionButton: SizedBox(
      //   width: 70,
      //   height: 70,
      //   child: FloatingActionButton(
      //     backgroundColor: Color(0xFFB4B4B4),//edittttttttttttttttttttttttttttttttt
      //     splashColor: LightModeMainColor,
      //     foregroundColor: Colors.white,
      //     elevation: 0,
      //     child: Column(
      //       children: [
      //         Container(
      //           margin: EdgeInsets.only(top: 10,bottom: 5),
      //           child: Image.asset("assets/images/Icon.png",
      //             width: 25,
      //             height: 25,),
      //         ),
      //         Align(
      //           alignment: Alignment.center,
      //           child: Text("Home",
      //             style: TextStyle(fontSize: 9,),),),],),
      //     onPressed: () {Navigator.pushNamed(context, HomePageScreen.routeName);},
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomAppBar(
      //   notchMargin: 10,
      //   shape: CircularNotchedRectangle(),
      //   color: Colors.white,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     mainAxisSize: MainAxisSize.max,
      //     children: [
      //
      //       Padding(
      //         padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             GestureDetector(
      //               onTap: (){Navigator.pushNamed(context, Regression1Screen.routeName);},
      //               child: Image.asset("assets/images/icon-park-solid_analysis.png",
      //                 width: 25,
      //                 height: 25,),),
      //             SizedBox(height: SizeConfig.screenHeight*0.01,),
      //             Text("Regression",
      //               style: TextStyle(
      //                 fontSize: 10,
      //                 color: LightModeSmallTextColor,
      //               ),)
      //           ],
      //         ),),
      //
      //       Padding(
      //         padding: EdgeInsets.only(top: 10,bottom: 10,right: 80),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             GestureDetector(
      //               onTap: (){Navigator.pushNamed(context, Plant1Screen.routeName);},
      //               child: Image.asset("assets/images/Vector.png",
      //                 width: 25,
      //                 height: 25,),
      //             ),
      //             SizedBox(height: SizeConfig.screenHeight*0.01,),
      //             Text("Plants",
      //               style: TextStyle(
      //                 fontSize: 10,
      //                 color: LightModeSmallTextColor,
      //               ),)
      //           ],
      //         ),),
      //
      //       Padding(
      //         padding: EdgeInsets.only(top: 10,right: 20,bottom: 10),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             GestureDetector(
      //               onTap: (){Navigator.pushNamed(context, ArticlesScreen.routeName);},
      //               child: Image.asset("assets/images/ooui_articles-ltr.png",
      //                 width: 25,
      //                 height: 25,
      //               ),
      //             ),
      //             SizedBox(height: SizeConfig.screenHeight*0.01,),
      //             Text("Articles",
      //               style: TextStyle(
      //                 fontSize: 10,
      //               ),)
      //           ],
      //         ),),
      //
      //       Padding(
      //         padding: EdgeInsets.only(top: 10,bottom: 10,right: 20),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             GestureDetector(
      //               onTap: (){},
      //               child: Image.asset("assets/images/material-symbols_person.png",
      //                 width: 25,
      //                 height: 25,),),
      //             SizedBox(height: SizeConfig.screenHeight*0.01,),
      //             Text("Profile",
      //               style: TextStyle(
      //                 fontSize: 10,
      //                 color: LightModeSmallTextColor,
      //               ),)
      //           ],
      //         ),),
      //     ],
      //   ),
      // ),
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
                      fontSize: 25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      color: LightModeSmallTextColor
                  ),
                ),
              ],
            ),

            SizedBox(height: SizeConfig.screenHeight*0.1,),
            Row(
              children: [
                Text("Why ",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                  color:LightModeSmallTextColor,
                ),),
                Text("Carbonite ",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                  color: LightModeMainColor,
                ),),
                Text("App ?",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                  color:LightModeSmallTextColor,
                ),),
              ],
            ),

            SizedBox(height: SizeConfig.screenHeight*0.04,),
            Container(
                child: Text("Our carbon footprint app is designed to help individuals and businesses track and reduce their carbon footprint.",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Poppins3",
                  color: LightModeSmallTextColor,
                ),),),

            SizedBox(height: SizeConfig.screenHeight*0.03,),
            Container(
              child: Text("We created this app to help people understand the impact of their daily choices on the environment and encourage them to make more sustainable choices. ",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Poppins3",
                  color: LightModeSmallTextColor,
                ),),),

            SizedBox(height: SizeConfig.screenHeight*0.03,),
            Container(
              child: Text("We help in reducing your impact on the environment, saving money on energy bills, and contributing to a more sustainable future.",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Poppins3",
                  color: LightModeSmallTextColor,
                ),),),
          ],
        ),
      ),
    );
  }
}

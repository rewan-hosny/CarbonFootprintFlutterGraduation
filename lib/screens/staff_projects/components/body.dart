import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/components/staff_bottom_navigation_bar.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/intro_questions/intro_questions.dart';
import 'package:graduation/screens/staff_before_questions/staff_before_questions_screen.dart';
import 'package:graduation/screens/staff_chooseDU_page/staff_chooseDU_page.dart';
import 'package:graduation/screens/stuff_download/stuff_download_screen.dart';
import 'package:graduation/size_config.dart';

import '../../../components/bottom_navigation_bar.dart';
import '../../advice_plants/advice_plants_screen.dart';
import '../../advice_waste/advice_waste_screen.dart';
import '../../advice_water/advice_water_screen.dart';
import '../../staff_electricity_project/staff_electricity_screen.dart';
import '../../stuff_home_page/stuff_home_page_screen.dart';

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


      body: Padding(
        padding: EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight*0.03,),
            TopBar(text: "         Projects",press: (){Navigator.pushNamed(context, StuffHomePageScreen.routeName);},),


            SizedBox(height: SizeConfig.screenHeight*0.03,),

            Align(
              alignment: Alignment.topLeft,
              child: Text("Hi Omar!",  style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "Poppins",color: LightModeMainColor
              ),),
            ),
            
            Align(
              alignment: Alignment.topLeft,
              child: Text("Good Morning",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 15,fontFamily: "Poppins",color: LightModeSmallTextColor
              ),),
            ),

            SizedBox(height: SizeConfig.screenHeight*0.03,),

            Align(
              alignment: Alignment.topLeft,
              child: Text("Ongoing Projects",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 16,fontFamily: "Poppins",color: LightModeMainColor),),
            ),

            SizedBox(height: SizeConfig.screenHeight*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    {Navigator.pushNamed(context, StaffElectricityScreen.routeName);}

                  },
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      ),
                    child: Stack(
                      children: [
                        Image.asset("assets/images/ss.png",fit: BoxFit.fill,),
                        Padding(
                          padding: const EdgeInsets.only(top: 65,left: 10),
                          child: Text("Electricity consumption",style: TextStyle(
                              fontFamily: "Poppins",fontSize: 16,color: Colors.white
                              ),),
                        )
                      ],
                    ),
                  ),
                ),



                GestureDetector(
                  onTap: (){Navigator.pushNamed(context, StaffBeforeQuestionsScreen.routeName);},
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Image.asset("assets/images/ssss.png",fit: BoxFit.fill,),
                        Padding(
                          padding: const EdgeInsets.only(top: 65,left: 10),
                          child: Text("FootPrint Calculations",style: TextStyle(
                              fontFamily: "Poppins",fontSize: 16,color: Colors.white
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(height: SizeConfig.screenHeight*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){Navigator.pushNamed(context, StaffChoosePage.routeName);},
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Image.asset("assets/images/Rectangle 18827-1.png",fit: BoxFit.fill,),
                        Padding(
                          padding: const EdgeInsets.only(top: 65,left: 10),
                          child: Text("Prediction Calculations",style: TextStyle(
                              fontFamily: "Poppins",fontSize: 16,color: Colors.white
                          ),),
                        )
                      ],
                    ),
                  ),
                ),



                GestureDetector(
                  onTap: (){


                    Navigator.pushNamed(context, AdviceWaterScreen.routeName);
                  },
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Image.asset("assets/images/aaaa.png",fit: BoxFit.fill,),
                        Padding(
                          padding: const EdgeInsets.only(top: 65,left: 10),
                          child: Text("Water Consumption",style: TextStyle(
                              fontFamily: "Poppins",fontSize: 16,color: Colors.white
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(height: SizeConfig.screenHeight*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, AdviceWasteScreen.routeName);

                  },
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Image.asset("assets/images/Rectangle 18827.png",fit: BoxFit.fill,),
                        Padding(
                          padding: const EdgeInsets.only(top: 65,left: 10),
                          child: Text("Waste Improvement",style: TextStyle(
                              fontFamily: "Poppins",fontSize: 16,color: Colors.white
                          ),),
                        )
                      ],
                    ),
                  ),
                ),



                GestureDetector(
                  onTap: (){


                    Navigator.pushNamed(context, AdvicePlantsScreen.routeName);
                  },
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Image.asset("assets/images/aa.png",fit: BoxFit.fill,),
                        Padding(
                          padding: const EdgeInsets.only(top: 65,left: 10),
                          child: Text("Plant Improvement",style: TextStyle(
                              fontFamily: "Poppins",fontSize: 16,color: Colors.white
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

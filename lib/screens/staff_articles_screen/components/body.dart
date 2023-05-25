import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../components/staff_bottom_navigation_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../stuff_home_page/stuff_home_page_screen.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFFF4F4F4),

      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.grey,
          // backgroundColor: Color(0xFFB4B4B4),//edittttttttttttttttttttttttttttttttt
          splashColor: LightModeMainColor,
          foregroundColor: Colors.white,
          elevation: 0,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,



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
          ),
          onPressed: () {Navigator.pushNamed(context, StuffHomePageScreen.routeName);},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomStaffNavigationBar(
        flag1: false,
        flag2: false,
        flag3: true,
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
                    onPressed: (){Navigator.pushNamed(context, StuffHomePageScreen.routeName);},
                    child: Image.asset("assets/icons/mdi_arrow-back.png"
                        ,height: SizeConfig.screenHeight*0.06),
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth*0.23,),

                Text("Articles",
                  style: TextStyle(
                      fontSize: 27,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      color: LightModeSmallTextColor
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Why ",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: LightModeMainColor,
                      ),),
                      Text("this matters ?",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: LightModeSmallTextColor,
                      ),),
                    ],
                  ),

                  SizedBox(height: SizeConfig.screenHeight*0.02,),

                  Text("The carbon footprint is also an important component of the\nEcological Footprint",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Poppins3",
                      color: LightModeSmallTextColor,
                    ),),

                  SizedBox(height: SizeConfig.screenHeight*0.03,),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Recommended Good Articles :",
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: "Poppins",
                        color: LightModeSmallTextColor,
                      ),
                    ),
                  ),

                  SizedBox(height: SizeConfig.screenHeight*0.03,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final Uri _url = Uri.parse(
                            //"https://www.nature.org/en-us/get-involved/how-to-help/carbon-footprint-calculator/#:~:text=A%20carbon%20footprint%20is%20the,highest%20rates%20in%20the%20world."
                              "https://www.nature.org/en-us/what-we-do/our-priorities/tackle-climate-change/climate-change-stories/"
                          );

                          if (await canLaunchUrl(_url)) {
                            await launchUrl(_url,mode: LaunchMode.externalApplication,
                                webViewConfiguration: WebViewConfiguration(
                                  // headers: headers
                                )
                            );
                          }

                        },
                        child: Row(
                          children: [
                            Container(
                              width: 370,
                              height: 90,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/icons/pexels-pixabay-39553.jpg"),
                                    fit: BoxFit.fill
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10,top: 15),
                                    child: Text("The story of climate change",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10,),
                                    child: Text("Our space oasis is over-heating",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 15,
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
                        onTap: () async {

                          final Uri _url = Uri.parse(
                              "https://www.nature.org/en-us/get-involved/how-to-help/carbon-footprint-calculator/#:~:text=A%20carbon%20footprint%20is%20the,highest%20rates%20in%20the%20world."

                          );

                          if (await canLaunchUrl(_url)) {
                            await launchUrl(_url,mode: LaunchMode.externalApplication,
                                webViewConfiguration: WebViewConfiguration(
                                  // headers: headers
                                )
                            );
                          }
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 370,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage("assets/icons/pexels-tim-mossholder-1708845.jpg"),
                                      fit: BoxFit.fill
                                  )
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10,top: 15),
                                    child: Text("What is a carbon footprint ?",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10,),
                                    child: Text("Start by looking at a carbon footprint",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 15,
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
                        onTap: () async {

                          final Uri _url = Uri.parse(
                            // "https://www.nature.org/en-us/get-involved/how-to-help/carbon-footprint-calculator/#:~:text=A%20carbon%20footprint%20is%20the,highest%20rates%20in%20the%20world."
                              "https://youth.europa.eu/get-involved/sustainable-development/how-reduce-my-carbon-footprint_en"
                          );

                          if (await canLaunchUrl(_url)) {
                            await launchUrl(_url,mode: LaunchMode.externalApplication,
                                webViewConfiguration: WebViewConfiguration(
                                  // headers: headers
                                )
                            );
                          }
                        },
                        child: Row(
                          children: [
                            Container(
                              width: 370,
                              height: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage("assets/icons/pexels-muhammad-khairul-iddin-adnan-808510.jpg"),
                                    fit: BoxFit.fill,
                                  )
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10,top: 15),
                                    child: Text("Reduce your carbon footprint",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(),
                                    child: Text("Explore the issues of climate change",
                                      style: TextStyle(
                                        fontFamily: "Poppins3",
                                        fontSize: 15,
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

                ],
              ),
            )
          ],
        ),
      ),


    );
  }
}

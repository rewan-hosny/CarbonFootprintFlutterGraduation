import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/home_page/home_page_screen.dart';
import 'package:graduation/screens/plant1_page/plant1_screen.dart';
import 'package:graduation/screens/upload_photo/upload_photo_screen.dart';
import 'package:graduation/size_config.dart';
import '../../../components/bottom_navigation_bar.dart';
import '../../articles/article_screen.dart';
import '../../plant2_page/plant2_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../profile/profile_screen.dart';
import '../../test_open_camera/camera_screen.dart';

// class Body extends StatelessWidget {
//   const Body({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: LightModeLightGreenColor,
//       floatingActionButton: SizedBox(
//         width: 70,
//         height: 70,
//         child: FloatingActionButton(
//           backgroundColor: Color(0xFFB4B4B4),//edittttttttttttttttttttttttttttttttt
//           splashColor: LightModeMainColor,
//           foregroundColor: Colors.white,
//           elevation: 0,
//           child: Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(top: 10,bottom: 5),
//                 child: Image.asset("assets/images/Icon.png",
//                   width: 25,
//                   height: 25,),
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: Text("Home",
//                   style: TextStyle(fontSize: 9,),),),],),
//           onPressed: () {Navigator.pushNamed(context, HomePageScreen.routeName);},
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//
//       bottomNavigationBar: BottomAppBar(
//         notchMargin: 10,
//         shape: CircularNotchedRectangle(),
//         color: Colors.white,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//
//             Padding(
//               padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   GestureDetector(
//                     onTap: (){},
//                     child: Image.asset("assets/images/icon-park-solid_analysis.png",
//                       width: 25,
//                       height: 25,),),
//                   SizedBox(height: SizeConfig.screenHeight*0.01,),
//                   Text("Regression",
//                     style: TextStyle(
//                       fontSize: 10,
//                       color: LightModeSmallTextColor,
//                     ),)
//                 ],
//               ),),
//
//             Padding(
//               padding: EdgeInsets.only(top: 10,bottom: 10,right: 80),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   GestureDetector(
//                     onTap: (){Navigator.pushNamed(context, Plant1Screen.routeName);},
//                     child: Image.asset("assets/images/Vector.png",
//                       color: Color(0xFF0A7036),
//                       width: 25,
//                       height: 25,),
//                   ),
//                   SizedBox(height: SizeConfig.screenHeight*0.01,),
//                   Text("Plants",
//                     style: TextStyle(
//                       fontSize: 10,
//                       color: LightModeMainColor,
//                     ),)
//                 ],
//               ),),
//
//             Padding(
//               padding: EdgeInsets.only(top: 10,right: 20,bottom: 10),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   GestureDetector(
//                     onTap: (){Navigator.pushNamed(context, ArticlesScreen.routeName);},
//                     child: Image.asset("assets/images/ooui_articles-ltr.png",
//                       width: 25,
//                       height: 25,),
//                   ),
//                   SizedBox(height: SizeConfig.screenHeight*0.01,),
//                   Text("Articles",
//                     style: TextStyle(
//                       fontSize: 10,
//                       color: LightModeSmallTextColor,
//                     ),)
//                 ],
//               ),),
//
//             Padding(
//               padding: EdgeInsets.only(top: 10,bottom: 10,right: 20),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   GestureDetector(
//                     onTap: (){},
//                     child: Image.asset("assets/images/material-symbols_person.png",
//                       width: 25,
//                       height: 25,),),
//                   SizedBox(height: SizeConfig.screenHeight*0.01,),
//                   Text("Profile",
//                     style: TextStyle(
//                       fontSize: 10,
//                       color: LightModeSmallTextColor,
//                     ),)
//                 ],
//               ),),
//           ],
//         ),
//       ),
//
//
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           children: [
//             SizedBox(height: SizeConfig.screenHeight*0.05,),
//             Row(
//               children: [
//                 SizedBox(
//                   width: getProportionateScreenWidth(40),
//                   height: getProportionateScreenHeight(40),
//                   child: TextButton(
//                     style: TextButton.styleFrom(
//                       shape:
//                       RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                       primary: Colors.white,
//                       backgroundColor: LightModeMainColor,
//                     ),
//                     onPressed: (){Navigator.pushNamed(context, HomePageScreen.routeName);},
//                     child: Image.asset("assets/icons/mdi_arrow-back.png"
//                         ,height: SizeConfig.screenHeight*0.06),
//                   ),
//                 ),
//                 SizedBox(width: SizeConfig.screenWidth*0.25,),
//                 Row(
//                   children: [
//                     Text("Hello",
//                       style: TextStyle(
//                         fontSize: 27,
//                         fontFamily: "Poppins",
//                         fontWeight: FontWeight.bold,
//                         color: LightModeSmallTextColor
//                       ),
//                     ),
//                     SizedBox(width: SizeConfig.screenWidth*0.01,),
//                     Container(
//                       child: Image.asset("assets/images/Waving Emoji Hand Hello.png"),
//                       width: 28,
//                       height: 28,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 40, bottom: 40),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 child: Text("Your Insights:",
//                   style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontFamily: "Poppins",
//                       fontSize: 22,
//                       color:LightModeSmallTextColor
//                   ),),
//               ),
//             ),
//
//             GestureDetector(
//               onTap: (){Navigator.pushNamed(context, Plant2Screen.routeName);},
//               child: Container(
//                 width: 175,
//                 height: 198,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15)
//                 ),
//                 child: Container(
//                   child: Column(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(top: 60),
//                         width: 60,
//                         height: 60,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFE6EEEA),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Container(
//                           padding: EdgeInsets.all(10),
//                             child: Image.asset("assets/images/first.jpeg")),
//                       ),
//                       SizedBox(height: SizeConfig.screenHeight*0.02,),
//                       Text("Scan now",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontFamily: "Poppins",
//                         fontWeight: FontWeight.bold,
//                         color: LightModeSmallTextColor,
//                       ),),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//
//             SizedBox(height: SizeConfig.screenHeight*0.03,),
//             Text("OR",style: TextStyle(
//               fontFamily: "Poppins",
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//               color: LightModeMainColor
//             ),),
//             SizedBox(height: SizeConfig.screenHeight*0.03,),
//
//             GestureDetector(
//               onTap: (){
//
//
//               },
//               child: Container(
//                 width: 175,
//                 height: 198,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15)
//                 ),
//                 child: Container(
//                   child: Column(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(top: 60),
//                         width: 60,
//                         height: 60,
//                         decoration: BoxDecoration(
//                           color: Color(0xFFE6EEEA),
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Container(
//                             padding: EdgeInsets.all(10),
//                             child: Image.asset("assets/images/second.jpeg")),
//                       ),
//                       SizedBox(height: SizeConfig.screenHeight*0.02,),
//                       Text("Upload a photo",
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontFamily: "Poppins",
//                           fontWeight: FontWeight.bold,
//                           color: LightModeSmallTextColor,
//                         ),),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
 // XFile? _image;
  Future getImage () async{
   var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    // setState(() {
    //   _image =image;
    // });
    image == null ? print("failed"):

   Navigator.push(
       context,
       MaterialPageRoute(
           builder: (context) => UploadPhotoScreen(
             xFile: image,

           ))


   );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightModeLightGreenColor,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.grey,
        //  backgroundColor: Color(0xFFB4B4B4),//edittttttttttttttttttttttttttttttttt
          splashColor: LightModeMainColor,
          foregroundColor: Colors.white,
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
                  style: TextStyle(fontSize: 9,),),),],),
          onPressed: () {
            Navigator.pushNamed(context, HomePageScreen.routeName);
            },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: CustomNavigationBar(
        flag1: false,
        flag2: true,
        flag3: false,
        flag4: false,
      ),


      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
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
                  SizedBox(width: SizeConfig.screenWidth*0.25,),
                  Row(
                    children: [
                      Text("Hello",
                        style: TextStyle(
                            fontSize: 27,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: LightModeSmallTextColor
                        ),
                      ),
                      SizedBox(width: SizeConfig.screenWidth*0.01,),
                      Container(
                        child: Image.asset("assets/icons/Waving_Emoji_Hand_Hello.png"),
                        width: 28,
                        height: 28,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 40),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Your Insights:",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        fontSize: 22,
                        color:LightModeSmallTextColor
                    ),
                  ),
                ),
              )

              ,

              GestureDetector(
                onTap: (){

                  Navigator.pushNamed(context, CameraScreen.routeName);


                  },
                child: Container(
                  width: 175,
                  height: 198,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 60),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFE6EEEA),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                              padding: EdgeInsets.all(10),
                              child: Image.asset("assets/icons/first.jpeg")),
                        ),
                        SizedBox(height: SizeConfig.screenHeight*0.02,),
                        Text("Scan now",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: LightModeSmallTextColor,
                          ),),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight*0.03,),
              Text("OR",style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: LightModeMainColor
              ),),
              SizedBox(height: SizeConfig.screenHeight*0.03,),

              GestureDetector(
                onTap: (){

                getImage();


                },
                child: Container(
                  width: 175,
                  height: 198,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 60),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFE6EEEA),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                              padding: EdgeInsets.all(10),
                              child: Image.asset("assets/icons/second.jpeg")),
                        ),
                        SizedBox(height: SizeConfig.screenHeight*0.02,),
                        Text("Upload a photo",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: LightModeSmallTextColor,
                          ),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

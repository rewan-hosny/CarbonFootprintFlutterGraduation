import 'dart:io';

import 'package:flutter/material.dart';
import 'package:graduation/services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../articles/article_screen.dart';
import '../../home_page/home_page_screen.dart';
import '../../plant1_page/plant1_screen.dart';
import '../../plant3_page/plant3_screen.dart';

// // A widget that displays the picture taken by the user.
// class DisplayPictureScreen extends StatelessWidget {
//   final String imagePath;
//
//   const DisplayPictureScreen({super.key, required this.imagePath});
//
//   getSharedPrefs() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//    prefs.setString("imagePath",imagePath);
//
//   }
//   @override
//   void initState() {
//     getSharedPrefs();
//     print("upload to sharedPrefence done ");
//   }
//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     //   appBar: AppBar(title: const Text('Display the Picture')),
//     //
//     //
//     //   // The image is stored as a file on the device. Use the `Image.file`
//     //   // constructor with the given path to display the image.
//     //   body: Image.file(File(imagePath)),
//     //
//     //
//     //
//     //
//     //
//     //
//     //
//     //
//     //
//     //
//     //
//     //
//     //
//     //
//     //
//     //
//     //
//     //
//     // );
//     return Scaffold(
//       //backgroundColor: LightModeLightGreenColor,
//       backgroundColor: Color(0xFFF0F5F2),
//
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
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: SizeConfig.screenHeight*0.05,),
//               Row(
//                 children: [
//                   SizedBox(
//                     width: getProportionateScreenWidth(40),
//                     height: getProportionateScreenHeight(40),
//                     child: TextButton(
//                       style: TextButton.styleFrom(
//                         shape:
//                         RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                         primary: Colors.white,
//                         backgroundColor: LightModeMainColor,
//                       ),
//                       onPressed: (){Navigator.pushNamed(context, Plant1Screen.routeName);},
//                       child: Image.asset("assets/icons/mdi_arrow-back.png"
//                           ,height: SizeConfig.screenHeight*0.06),
//                     ),
//                   ),
//                   SizedBox(width: SizeConfig.screenWidth*0.19,),
//
//                   Text("Scan Now",
//                     style: TextStyle(
//                         fontSize: 27,
//                         fontFamily: "Poppins",
//                         fontWeight: FontWeight.bold,
//                         color: LightModeSmallTextColor
//                     ),
//                   ),
//                 ],
//               ),
//
//               SizedBox(height: SizeConfig.screenHeight*0.05,),
//
//               Container(
//                   width: 400,
//                   height: 380,
//                   child:Image.file(File(imagePath))
//               ),
//               SizedBox(height: SizeConfig.screenHeight*0.08,),
//               Padding(
//                 padding: EdgeInsets.only(top: 15),
//                 child: ElevatedButton(
//
//                   onPressed: () {
//
//                     //
//                     // Navigator.pushNamed(context, Plant3Screen.routeName);
//                     //
//                     //
//                     //
//
//                     // هنا هتربطي بال endpoint بتاعة الفلورز
//
//                     APIService.scanPlant().then((response) => {
//                       print("flower type : "),
//                       print(response.flowerType),
//                       print("status"),
//                       print(response.status)
//                     });
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//                     },
//                   child: SizedBox(
//                     width: getProportionateScreenWidth(329),
//                     height: getProportionateScreenHeight(52),
//                     child: Center(
//                       child: Text(
//                         "Get Result",
//                         style: TextStyle(fontSize: 24),
//                       ),
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(15))),
//                     // padding: EdgeInsets.fromLTRB(110, 14, 110, 14),
//                     primary: Colors.white,
//                     backgroundColor: LightModeMainColor,
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//

class DisplayPictureScreen extends StatefulWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});


  @override
  State<DisplayPictureScreen> createState() => _DisplayPictureScreenState();
}

class _DisplayPictureScreenState extends State<DisplayPictureScreen> {
  getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("imagePath",widget.imagePath);
  }

  @override
  void initState() {
    getSharedPrefs();
    print("upload to sharedPrefence done ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: LightModeLightGreenColor,
      backgroundColor: Color(0xFFF0F5F2),

      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Color(0xFFB4B4B4),//edittttttttttttttttttttttttttttttttt
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
          onPressed: () {Navigator.pushNamed(context, HomePageScreen.routeName);},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [

            Padding(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Image.asset("assets/images/icon-park-solid_analysis.png",
                      width: 25,
                      height: 25,),),
                  SizedBox(height: SizeConfig.screenHeight*0.01,),
                  Text("Regression",
                    style: TextStyle(
                      fontSize: 10,
                      color: LightModeSmallTextColor,
                    ),)
                ],
              ),),

            Padding(
              padding: EdgeInsets.only(top: 10,bottom: 10,right: 80),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: (){Navigator.pushNamed(context, Plant1Screen.routeName);},
                    child: Image.asset("assets/images/Vector.png",
                      color: Color(0xFF0A7036),
                      width: 25,
                      height: 25,),
                  ),
                  SizedBox(height: SizeConfig.screenHeight*0.01,),
                  Text("Plants",
                    style: TextStyle(
                      fontSize: 10,
                      color: LightModeMainColor,
                    ),)
                ],
              ),),

            Padding(
              padding: EdgeInsets.only(top: 10,right: 20,bottom: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: (){Navigator.pushNamed(context, ArticlesScreen.routeName);},
                    child: Image.asset("assets/images/ooui_articles-ltr.png",
                      width: 25,
                      height: 25,),
                  ),
                  SizedBox(height: SizeConfig.screenHeight*0.01,),
                  Text("Articles",
                    style: TextStyle(
                      fontSize: 10,
                      color: LightModeSmallTextColor,
                    ),)
                ],
              ),),

            Padding(
              padding: EdgeInsets.only(top: 10,bottom: 10,right: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Image.asset("assets/images/material-symbols_person.png",
                      width: 25,
                      height: 25,),),
                  SizedBox(height: SizeConfig.screenHeight*0.01,),
                  Text("Profile",
                    style: TextStyle(
                      fontSize: 10,
                      color: LightModeSmallTextColor,
                    ),)
                ],
              ),),
          ],
        ),
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
                      onPressed: (){Navigator.pushNamed(context, Plant1Screen.routeName);},
                      child: Image.asset("assets/icons/mdi_arrow-back.png"
                          ,height: SizeConfig.screenHeight*0.06),
                    ),
                  ),
                  SizedBox(width: SizeConfig.screenWidth*0.19,),

                  Text("Scan Now",
                    style: TextStyle(
                        fontSize: 27,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        color: LightModeSmallTextColor
                    ),
                  ),
                ],
              ),

              SizedBox(height: SizeConfig.screenHeight*0.05,),

              Container(
                  width: 400,
                  height: 380,
                  child:Image.file(File(widget.imagePath))
              ),
              SizedBox(height: SizeConfig.screenHeight*0.08,),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: ElevatedButton(

                  onPressed: () {

                    //
                    // Navigator.pushNamed(context, Plant3Screen.routeName);
                    //
                    //
                    //

                    // هنا هتربطي بال endpoint بتاعة الفلورز

                    APIService.scanPlant().then((response) => {
                      print("flower type : "),
                      print(response.flowerType),
                      print("status"),
                      print(response.status),
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Plant3Screen(flowerType: response.flowerType??"",flowerStatus: response.status??"",
                              ImagePath: widget.imagePath,
                              )
                          ))



                    });
















                  },
                  child: SizedBox(
                    width: getProportionateScreenWidth(329),
                    height: getProportionateScreenHeight(52),
                    child: Center(
                      child: Text(
                        "Get Result",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    // padding: EdgeInsets.fromLTRB(110, 14, 110, 14),
                    primary: Colors.white,
                    backgroundColor: LightModeMainColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

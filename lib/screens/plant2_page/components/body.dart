import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/plant1_page/plant1_screen.dart';
import 'package:graduation/screens/plant3_page/plant3_screen.dart';
import 'package:graduation/size_config.dart';
import 'package:camera/camera.dart';
import '../../../components/bottom_navigation_bar.dart';
import '../../articles/article_screen.dart';
import '../../home_page/home_page_screen.dart';
import '../../profile/profile_screen.dart';



class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();

}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: LightModeLightGreenColor,
      backgroundColor: Color(0xFFF0F5F2),

      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.grey,//edittttttttttttttttttttttttttttttttt
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
      bottomNavigationBar: CustomNavigationBar(
        flag1: false,
        flag2: true,
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
              child: Image(image: AssetImage("assets/images/3-Plants 2 Page.png"),),
            ),
            SizedBox(height: SizeConfig.screenHeight*0.08,),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: ElevatedButton(

                onPressed: () {Navigator.pushNamed(context, Plant3Screen.routeName);},
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
    );
  }
}










// class Body extends StatefulWidget {
//   final List<CameraDescription>? cameras;
//   const Body({Key? key, this.cameras}) : super(key: key);
//
//   @override
//   State<Body> createState() => _BodyState();
// }
//
// class _BodyState extends State<Body> {
//
//   late CameraController controller;
//   XFile? pictureFile;
//
//
//   @override
//
//   void initState() {
//     super.initState();
//     controller = CameraController(
//       widget.cameras![0],
//       ResolutionPreset.max,
//     );
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     });
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return CameraPreview(controller);
//
//     return Scaffold(
//         backgroundColor: LightModeLightGreenColor,
//
//         floatingActionButton: SizedBox(
//           width: 70,
//           height: 70,
//           child: FloatingActionButton(
//             backgroundColor: Color(0xFFB4B4B4),//edittttttttttttttttttttttttttttttttt
//             splashColor: LightModeMainColor,
//             foregroundColor: Colors.white,
//             elevation: 0,
//             child: Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(top: 10,bottom: 5),
//                   child: Image.asset("assets/images/Icon.png",
//                     width: 25,
//                     height: 25,),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Text("Home",
//                     style: TextStyle(fontSize: 9,),),),],),
//             onPressed: () {Navigator.pushNamed(context, HomePageScreen.routeName);},
//           ),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         bottomNavigationBar: BottomAppBar(
//           notchMargin: 10,
//           shape: CircularNotchedRectangle(),
//           color: Colors.white,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             mainAxisSize: MainAxisSize.max,
//             children: [
//
//               Padding(
//                 padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     GestureDetector(
//                       onTap: (){},
//                       child: Image.asset("assets/images/icon-park-solid_analysis.png",
//                         width: 25,
//                         height: 25,),),
//                     SizedBox(height: SizeConfig.screenHeight*0.01,),
//                     Text("Regression",
//                       style: TextStyle(
//                         fontSize: 10,
//                         color: LightModeSmallTextColor,
//                       ),)
//                   ],
//                 ),),
//
//               Padding(
//                 padding: EdgeInsets.only(top: 10,bottom: 10,right: 80),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     GestureDetector(
//                       onTap: (){Navigator.pushNamed(context, Plant1Screen.routeName);},
//                       child: Image.asset("assets/images/Vector.png",
//                         color: Color(0xFF0A7036),
//                         width: 25,
//                         height: 25,),
//                     ),
//                     SizedBox(height: SizeConfig.screenHeight*0.01,),
//                     Text("Plants",
//                       style: TextStyle(
//                         fontSize: 10,
//                         color: LightModeMainColor,
//                       ),)
//                   ],
//                 ),),
//
//               Padding(
//                 padding: EdgeInsets.only(top: 10,right: 20,bottom: 10),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     GestureDetector(
//                       onTap: (){Navigator.pushNamed(context, ArticlesScreen.routeName);},
//                       child: Image.asset("assets/images/ooui_articles-ltr.png",
//                         width: 25,
//                         height: 25,),
//                     ),
//                     SizedBox(height: SizeConfig.screenHeight*0.01,),
//                     Text("Articles",
//                       style: TextStyle(
//                         fontSize: 10,
//                         color: LightModeSmallTextColor,
//                       ),)
//                   ],
//                 ),),
//
//               Padding(
//                 padding: EdgeInsets.only(top: 10,bottom: 10,right: 20),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     GestureDetector(
//                       onTap: (){},
//                       child: Image.asset("assets/images/material-symbols_person.png",
//                         width: 25,
//                         height: 25,),),
//                     SizedBox(height: SizeConfig.screenHeight*0.01,),
//                     Text("Profile",
//                       style: TextStyle(
//                         fontSize: 10,
//                         color: LightModeSmallTextColor,
//                       ),)
//                   ],
//                 ),),
//             ],
//           ),
//         ),
//
//         body: Padding(
//
//           padding: EdgeInsets.all(20),
//           child: Column(
//             children: [
//
//               Center(
//                 child: SizedBox(
//                   height: 400,
//                   width: 400,
//                   child: CameraPreview(controller),
//                 ),
//               ),
//
//
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
//                       onPressed: (){Navigator.pushNamed(context, HomePageScreen.routeName);},
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
//               SizedBox(height: SizeConfig.screenHeight*0.2,),
//
//
//
//               Padding(
//                 padding: EdgeInsets.only(top: 350),
//                 child: ElevatedButton(
//                   onPressed: () async {
//                     // Navigator.pushNamed(context, Plant3Screen.routeName);
//                     pictureFile = await controller.takePicture();
//                     setState(() {});
//
//                   },
//
//                   child: Text(
//                     "Get Result",
//                     style: TextStyle(fontSize: 24),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(15))),
//                     padding: EdgeInsets.fromLTRB(110, 13, 110, 13),
//                     primary: Colors.white,
//                     backgroundColor: LightModeMainColor,
//                   ),
//                 ),
//               ),
//
//               if (pictureFile != null) Image.file(File(pictureFile!.path)),
//
//             ],
//           ),
//         ),
//
//
//     );
//   }
// }

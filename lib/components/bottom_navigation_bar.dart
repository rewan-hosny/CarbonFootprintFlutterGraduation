import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import '../screens/articles/article_screen.dart';
import '../screens/before_plants/before_plants_screen.dart';
import '../screens/before_regression/before_regression_screen.dart';
import '../screens/home_page/home_page_screen.dart';
import '../screens/plant1_page/plant1_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/regression1_page/regression1_screen.dart';
import '../size_config.dart';

class CustomNavigationBar extends StatefulWidget {
  final bool flag1 ;
  final bool flag2 ;
  final bool flag3 ;
  final bool flag4  ;
  const CustomNavigationBar({Key? key, required this.flag1, required this.flag2, required this.flag3, required this.flag4}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();


}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  // String? fName;
  // String? sName;
  // String? email;
  // String? password;
  // String? imagePath;
  // late Map<String,String> currentUserData;
  // loadProfileScreenData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   currentUserData["fName"]= prefs.getString('currentUserFName')!;
  //
  //
  //
  // }


  Map<String,String> NavigationcurrentUserData ={};
  loadProfileScreenData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    NavigationcurrentUserData["fName"]= prefs.getString('currentUserFName')??"";
    NavigationcurrentUserData["sName"]= prefs.getString('currentUserSName')??"";
    NavigationcurrentUserData["email"]= prefs.getString('currentUserEmail')??"";
    NavigationcurrentUserData["imagePath"]= prefs.getString('currentImagePath')??"";
    print("data from botom navigation");
    print(NavigationcurrentUserData["fName"]);
    return NavigationcurrentUserData;
  }
@override
  void initState() {
    // TODO: implement initState
    loadProfileScreenData();
  }
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    loadProfileScreenData();
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
                  onTap: (){
                    Navigator.pushNamed(context, BeforeRegressionScreen.routeName);

                  },
                  child: Image.asset("assets/images/icon-park-solid_analysis.png",
                    color:widget.flag1==true? Color(0xFF0A7036): LightModeSmallTextColor,
                    width: 25,
                    height: 25,),),
                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Text("Regression",
                  style: TextStyle(
                    fontSize: 10,

                      color:widget.flag1==true? LightModeMainColor: LightModeSmallTextColor,
                  ),)
              ],
            ),),

          Padding(
            padding: EdgeInsets.only(top: 10,bottom: 10,right: 80),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: (){Navigator.pushNamed(context, BeforePlantsScreen.routeName);},
                  child: Image.asset("assets/images/Vector.png",
                  // color: Color(0xFF0A7036),
                    color:widget.flag2==true? Color(0xFF0A7036): LightModeSmallTextColor,
                    width: 25,
                    height: 25,),
                ),
                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Text("Plants",
                  style: TextStyle(
                    fontSize: 10,
                    color: widget.flag2==true? LightModeMainColor: LightModeSmallTextColor,
                  ),)
              ],
            ),),

          Padding(
            padding: EdgeInsets.only(top: 10,right: 20,bottom: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, ArticlesScreen.routeName);
                    },
                  child: Image.asset("assets/images/ooui_articles-ltr.png",
                    color:widget.flag3==true? Color(0xFF0A7036): LightModeSmallTextColor,
                    width: 25,
                    height: 25,),
                ),
                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Text("Articles",
                  style: TextStyle(
                    fontSize: 10,
                    color: widget.flag3==true? LightModeMainColor: LightModeSmallTextColor,
                  ),)
              ],
            ),),

          Padding(
            padding: EdgeInsets.only(top: 10,bottom: 10,right: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: (){
                    // Navigator.pushNamed(context, ProfileScreen.routeName ).then((_) {
                    //   // This block runs when you have returned back to the 1st Page from 2nd.
                    //   setState(() {
                    //     // Call setState to refresh the page.
                    //   });
                    // });
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ProfileScreen(
                    //           currentUserData: NavigationcurrentUserData ,
                    //         )
                    //
                    //
                    //
                    //
                    //     )
                    //


                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                        ProfileScreen(
                      currentUserData: NavigationcurrentUserData ,
                    )


                    )).then((_) =>
                        setState(() { }),


                        );







                  },
                  child: Image.asset("assets/images/material-symbols_person.png",
                    color:widget.flag4==true? Color(0xFF0A7036): LightModeSmallTextColor,
                    width: 25,
                    height: 25,),),
                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Text("Profile",
                  style: TextStyle(
                    fontSize: 10,
                    color: widget.flag4==true? LightModeMainColor: LightModeSmallTextColor,
                  ),)
              ],
            ),),
        ],
      ),
    );
  }
}


//
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import '../constants.dart';
// import '../screens/articles/article_screen.dart';
// import '../screens/home_page/home_page_screen.dart';
// import '../screens/plant1_page/plant1_screen.dart';
// import '../screens/profile/profile_screen.dart';
// import '../size_config.dart';
//
// class CustomNavigationBar extends StatefulWidget {
//   const CustomNavigationBar({Key? key}) : super(key: key);
//
//
//
//   @override
//   State<CustomNavigationBar> createState() => _CustomNavigationBarState();
//
//
//
//
//
// }
//
// class _CustomNavigationBarState extends State<CustomNavigationBar> {
//   String? fName;
//   String? sName;
//   String? email;
//   String? password;
//   String? imagePath;
//   late Map<String,String> NavigationcurrentUserData;
//   loadProfileScreenData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     NavigationcurrentUserData["fName"]= prefs.getString('currentUserFName')??"";
//     NavigationcurrentUserData["sName"]= prefs.getString('currentUserSName')??"";
//     NavigationcurrentUserData["email"]= prefs.getString('currentUserEmail')??"";
//     NavigationcurrentUserData["imagePath"]= prefs.getString('currentImagePath')??"";
//     return NavigationcurrentUserData;
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       notchMargin: 10,
//       shape: CircularNotchedRectangle(),
//       color: Colors.white,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//
//           Padding(
//             padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 GestureDetector(
//                   onTap: (){
//
//                   },
//                   child: Image.asset("assets/images/icon-park-solid_analysis.png",
//                     width: 25,
//                     height: 25,),),
//                 SizedBox(height: SizeConfig.screenHeight*0.01,),
//                 Text("Regression",
//                   style: TextStyle(
//                     fontSize: 10,
//                     color: LightModeSmallTextColor,
//                   ),)
//               ],
//             ),),
//
//           Padding(
//             padding: EdgeInsets.only(top: 10,bottom: 10,right: 80),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 GestureDetector(
//                   onTap: (){Navigator.pushNamed(context, Plant1Screen.routeName);},
//                   child: Image.asset("assets/images/Vector.png",
//                     color: Color(0xFF0A7036),
//                     width: 25,
//                     height: 25,),
//                 ),
//                 SizedBox(height: SizeConfig.screenHeight*0.01,),
//                 Text("Plants",
//                   style: TextStyle(
//                     fontSize: 10,
//                     color: LightModeMainColor,
//                   ),)
//               ],
//             ),),
//
//           Padding(
//             padding: EdgeInsets.only(top: 10,right: 20,bottom: 10),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 GestureDetector(
//                   onTap: (){Navigator.pushNamed(context, ArticlesScreen.routeName);},
//                   child: Image.asset("assets/images/ooui_articles-ltr.png",
//                     width: 25,
//                     height: 25,),
//                 ),
//                 SizedBox(height: SizeConfig.screenHeight*0.01,),
//                 Text("Articles",
//                   style: TextStyle(
//                     fontSize: 10,
//                     color: LightModeSmallTextColor,
//                   ),)
//               ],
//             ),),
//
//           // Padding(
//           //   padding: EdgeInsets.only(top: 10,bottom: 10,right: 20),
//           //   child: Column(
//           //     mainAxisSize: MainAxisSize.min,
//           //     children: [
//           //       GestureDetector(
//           //         onTap: (){
//           //           Navigator.push(
//           //               context,
//           //               MaterialPageRoute(
//           //                   builder: (context) => ProfileScreen(
//           //                     currentUserData: loadProfileScreenData(),
//           //
//           //                   ))
//           //
//           //
//           //           );
//           //
//           //         },
//           //         child: Image.asset("assets/images/material-symbols_person.png",
//           //           width: 25,
//           //           height: 25,),),
//           //       SizedBox(height: SizeConfig.screenHeight*0.01,),
//           //       Text("Profile",
//           //         style: TextStyle(
//           //           fontSize: 10,
//           //           color: LightModeSmallTextColor,
//           //         ),)
//           //     ],
//           //   ),
//           // ),
//
//
//           Padding(
//             padding: EdgeInsets.only(top: 10,bottom: 10,right: 20),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 GestureDetector(
//                   onTap: (){
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => ProfileScreen(
//                               currentUserData: NavigationcurrentUserData ,
//                             )
//                         )
//
//
//                     );
//
//                   },
//                   child: Image.asset("assets/images/material-symbols_person.png",
//                     width: 25,
//                     height: 25,),),
//                 SizedBox(height: SizeConfig.screenHeight*0.01,),
//                 Text("Profile",
//                   style: TextStyle(
//                     fontSize: 10,
//                     color: LightModeSmallTextColor,
//                   ),)
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
//
//

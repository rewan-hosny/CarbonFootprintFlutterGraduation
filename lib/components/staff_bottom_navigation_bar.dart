import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:graduation/screens/staff_articles_screen/staff_articles.dart';
import 'package:graduation/screens/staff_projects/staff_projects_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import '../screens/articles/article_screen.dart';
import '../screens/before_regression/before_regression_screen.dart';
import '../screens/home_page/home_page_screen.dart';
import '../screens/plant1_page/plant1_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/regression1_page/regression1_screen.dart';
import '../screens/staff_before_regression/staff_before_regression.dart';
import '../screens/target_progress/target_progress_screen.dart';
import '../services/api_service.dart';
import '../size_config.dart';

class CustomStaffNavigationBar extends StatefulWidget {
  final bool flag1 ;
  final bool flag2 ;
  final bool flag3 ;
  final bool flag4  ;
  const CustomStaffNavigationBar({Key? key, required this.flag1, required this.flag2, required this.flag3, required this.flag4}) : super(key: key);



  @override
  State<CustomStaffNavigationBar> createState() => _CustomStaffNavigationBarState();





}

class _CustomStaffNavigationBarState extends State<CustomStaffNavigationBar> {
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
                    Navigator.pushNamed(context, StaffBeforeRegression.routeName);
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
                  onTap: (){Navigator.pushNamed(context, StaffProjectsScreen.routeName);},
                  child: Image.asset("assets/images/project.png",
                    // color: Color(0xFF0A7036),
                    color:widget.flag2==true? Color(0xFF0A7036): LightModeSmallTextColor,
                    width: 25,
                    height: 25,),
                ),
                SizedBox(height: SizeConfig.screenHeight*0.01,),
                Text("Projects",
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
                    Navigator.pushNamed(context, StaffArticleScreen.routeName);
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
                    APIService.GetTargetYear().then((response) {
                      if (response.status =="Success") {
                        Navigator.pushNamed(context, TargetProgressScreen.routeName );


                      }
                    else{
                      print("rewan");
                        Fluttertoast.showToast(msg: "please set target at first",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 4,
                            backgroundColor: Colors.grey,
                            textColor: Colors.black,
                            fontSize: 15

                        );
                    }
                    });



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

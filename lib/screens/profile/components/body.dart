import 'package:flutter/material.dart';
import 'package:graduation/screens/profile/components/profile_bar.dart';
import 'package:graduation/screens/profile/profile_screen.dart';
import 'package:graduation/services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../components/bottom_navigation_bar.dart';
import '../../../components/top_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../about/about_screen.dart';
import '../../contact_us/contact_screen.dart';
import '../../home/home_screen.dart';
import '../../home_page/home_page_screen.dart';
import 'item.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.currentUserData}) : super(key: key);
  final Map<String,String> currentUserData;
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String? fName;
  String? sName;
  String? email;
  String? password;
  String? conform_password;
  String? imagePath;
  String? description;
  String? imagePathTemp;
  String? testPassImagePath;
  late NetworkImage profileImage;
 // final Map<String,String> currentUserData = {};
  @override
  void initState() {
    // APIService.getCurrentUserData().then((response) => {
    //   fName=response.firstName,
    //   sName=response.lastName,
    //   email=response.email,
    //   imagePathTemp = response.image,
    //   if(imagePathTemp == null){
    //     imagePath = ""
    //   }
    //   else{
    //     imagePath = imagePathTemp
    //   },
    //   currentUserData["fName"]=fName!,
    //   currentUserData["sName"]=sName!,
    //   currentUserData["email"]=email!,
    //   currentUserData["imagePath"]=imagePath!,
    //
    //
    //
    // });

// print("I am in init state in profile body");
//     setState(() {
//
//     });

  }


  loadCurrentSessionData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // APIService.getCurrentUserData().then((response) => {
    //   fName=response.firstName,
    //   sName=response.lastName,
    //   email=response.email,
    //   imagePathTemp = response.image,
    //   print("imagePathTemp in profile body"),
    //   print(imagePathTemp),
    //   if(imagePathTemp == null){
    //     imagePath = ""
    //   }
    //   else{
    //     imagePath = imagePathTemp
    //   },
    //   print("imagePath in profile body"),
    //   print(imagePath),
    //
    //   prefs.setString('currentUserFName', fName!),
    //   prefs.setString('currentUserSName', sName!),
    //   prefs.setString('currentUserEmail', email!),
    //   prefs.setString('currentImagePath', imagePath!),
    //   print("currentImagePath in prefs.setString in profile body"),
    //   print(prefs.getString('currentImagePath')!),
      widget.currentUserData["fName"]= prefs.getString('currentUserFName')!;
      fName=widget.currentUserData["fName"];
      print("first name in profile screen");
      print(widget.currentUserData["fName"]);
      widget.currentUserData["sName"]= prefs.getString('currentUserSName')!;
      sName = widget.currentUserData["sName"];
      widget.currentUserData["email"]= prefs.getString('currentUserEmail')!;
     widget. currentUserData["imagePath"]= prefs.getString('currentImagePath')!;
      testPassImagePath = widget. currentUserData["imagePath"];
      print("currentUserData[imagePath] in profile body");
      print(widget.currentUserData["imagePath"]);

    // });
    return await widget.currentUserData;
  }

  @override
  Widget build(BuildContext context) {
    imageCache.clear();
    imageCache.clearLiveImages();
    return FutureBuilder(
      future: loadCurrentSessionData(),
    builder: (BuildContext context,AsyncSnapshot snapshot){
      if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      }
    if (snapshot.hasData) {
      return SafeArea(

        child: Scaffold(


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
              onPressed: () {
                Navigator.pushNamed(context, HomePageScreen.routeName);
              },
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: CustomNavigationBar(
            flag1: false,
            flag2: false,
            flag3: false,
            flag4: true,
          ),


          body: Container(
            color: //Color(0xFFF5F5F5),
            LightGray
            ,
            height: double.infinity,
            child: SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TopBar(
                          text: "            Profile ",
                          press: () {
                            Navigator.pushNamed(context, HomeScreen.routeName);
                          },
                        ),
                        SizedBox(
                          height: 41,
                        ),
                        Container(
                          height: 104,
                          decoration: BoxDecoration(
                            color: DarkGreen,
                            borderRadius: new BorderRadius.circular(8.0),
                          ),
                          child: ProfileBar(
                              name: "$fName ${sName}",
                              description: "#" + "student",
                              image: testPassImagePath,
                              currentUserData: widget.currentUserData
                          ),
                        ),
                        SizedBox(
                          height: 41,
                        ),
                        Container(

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Item(headLine: "My Account",detail: "Make changes to your account",
                                image: "assets/images/Profile.png",
                                press: (){



                                },

                              ),

                              Item(headLine: "Help & Support ",detail: "",
                                image: "assets/images/Profile.png",
                                press: (){
                                  Navigator.pushNamed(context, ContactScreen.routeName);

                                },

                              ),
                              Item(headLine: "About App",detail: "",
                                image: "assets/images/Heart.png",
                                press: (){


                                  Navigator.pushNamed(context, AboutScreen.routeName);
                                },

                              ),
                              Item(headLine: "Log out",detail: "secure your account for safety",
                                image: "assets/images/Logout.png",
                                press: (){
                                APIService.Logout().then((response) => {
                                  if(response.status=="Success"){
                                    print("logout successfully"),
                                    print(response.status),
                                    Navigator.pushNamed(context, HomeScreen.routeName),
                                  }
                                });


                                },

                              ),



                            ],
                          ),
                        )




















                      ],











                    ),
                  ),
                )),
          ),
        ),
      );
    }
    print(snapshot.error);
    print(snapshot.connectionState);
    print(snapshot.hasError);
    print(snapshot.hasData);
    return Container(
    child: Center(
    child: Text("loading profile failed"),
      ),
      );

    }


    );
  }
}

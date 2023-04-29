import 'package:flutter/material.dart';
import 'package:graduation/components/default_button.dart';
import 'package:graduation/components/forget_password.dart';
import 'package:graduation/components/top_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/screens/forget_password/forget_password_screen.dart';
import 'package:graduation/screens/home/home_screen.dart';
import 'package:graduation/screens/sign_in/components/sign_in_form.dart';
import 'package:graduation/screens/sign_in/sign_in_screen.dart';
import 'package:graduation/screens/sign_up/components/sign_up_form.dart';
import 'package:graduation/size_config.dart';
import 'package:photo_view/photo_view.dart';
import '../../../services/api_service.dart';

import '../../../models/Staff_check_admin_request_model.dart';
import '../../Staff_Login2/Staff_Login2.dart';
import '../../stuff_home_page/stuff_home_page_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
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
                      onPressed: ()async{

                        StaffCheckAdmin model=StaffCheckAdmin(
                            isAdmin:false
                        );
                        bool isUserAdmin = await APIService.IsAdmin(model);
                        if (isUserAdmin) {
                          // User is an admin. Navigate to StaffLogin2 page.
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                        } else {
                          // User is not an admin. Display a message.
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text("Not Authorized"),
                              content: Text("You are not authorized to access this page."),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("OK"),
                                ),
                              ],
                            ),
                          );
                        }


                      },
                      child: Image.asset("assets/icons/mdi_arrow-back.png"
                          ,height: SizeConfig.screenHeight*0.06),
                    ),
                  ),


                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Container(
                width: SizeConfig.screenWidth,
                height: MediaQuery.of(context).size.height * 0.40,
                child: PhotoView(
                  imageProvider: AssetImage("assets/images/stafflogin.png"),
                  backgroundDecoration: BoxDecoration(color: Colors.white),
                  loadingBuilder: (context, event) => const Center(child: CircularProgressIndicator()),
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Doesn't have an account?",
                      style: TextStyle(
                        color: Color(0xFF585757),
                        fontSize: 18,
                        height: 22 / 15,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                      child: Text(
                        "click here ",
                        style: LogInTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Text(
                  "OR",
                  style: TextStyle(
                    color: Color(0xFF1CA953),
                    fontSize: 26,
                    height: 22 / 15,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),

              Container(
                child: SizedBox(
                  width: getProportionateScreenWidth(329),
                  height: getProportionateScreenHeight(52),
                  child: ElevatedButton(
                    onPressed: () async {
                      StaffCheckAdmin model=StaffCheckAdmin(
                        isAdmin:true
                      );
                      bool isUserAdmin = await APIService.IsAdmin(model);
                      if (isUserAdmin) {
                        // User is an admin. Navigate to StaffLogin2 page.
                        Navigator.push(context, MaterialPageRoute(builder: (context) => StaffLogin2()));
                      } else {
                        // User is not an admin. Display a message.
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Not Authorized"),
                            content: Text("You are not authorized to access this page."),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("OK"),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      primary: LightModeMainColor,
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      textStyle: ButtonFontStyle,
                    ),
                    child: Text("Log in"),
                  ),
                ),
              ),

              SizedBox(height: SizeConfig.screenHeight * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}


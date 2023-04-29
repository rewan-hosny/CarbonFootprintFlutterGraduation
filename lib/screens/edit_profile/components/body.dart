import 'package:flutter/material.dart';

import '../../../components/already_have_account.dart';
import '../../../components/edit_profile_top_bar.dart';
import '../../../components/top_bar.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../home/home_screen.dart';
import '../../sign_up/components/sign_up_form.dart';
import 'edit_profile_form.dart';
class Body extends StatelessWidget {
  final Map<String,String> currentUserData;
  const Body({Key? key, required this.currentUserData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
        Scaffold(


body: Container(
    color: //Color(0xFFF5F5F5),
    Colors.white,
  height: double.infinity,
  child: SizedBox(
    child: Padding(
      padding:  EdgeInsets.all(getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            EditProfileTopBar(currentUserData: currentUserData,),
            SizedBox(
              height: 10,
            ),
            EditProfileForm(currentUserData:currentUserData),






          ],
        ),
      ),
    ),
  ),


),

        ));
  }
}

import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName ="/profile";
  final Map<String,String> currentUserData;
  const ProfileScreen({Key? key, required this.currentUserData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(


      body: Body(currentUserData: currentUserData,),
    );
  }
}

import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../edit_profile/components/body.dart';
class EditProfile extends StatelessWidget {
  static String routeName ="/edit_profile";
  final Map<String,String> currentUserData;
  const EditProfile({Key? key, required this.currentUserData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(currentUserData:currentUserData),
    );
  }
}

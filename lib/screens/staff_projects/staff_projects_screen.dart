import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../staff_projects/components/body.dart';


class StaffProjectsScreen extends StatelessWidget {
  static String routeName="/staff_projects_screen";
  const StaffProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
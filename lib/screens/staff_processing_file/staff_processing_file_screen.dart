import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';

import '../staff_processing_file/components/body.dart';



class StaffProcessingFileScreen extends StatelessWidget {
  static String routeName="/staff_processing_file_screen";
  const StaffProcessingFileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
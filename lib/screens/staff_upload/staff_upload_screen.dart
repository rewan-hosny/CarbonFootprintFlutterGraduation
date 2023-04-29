import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';

import '../staff_upload/components/body.dart';


class StaffUploadScreen extends StatelessWidget {
  static String routeName="/staff_upload_screen";
  const StaffUploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
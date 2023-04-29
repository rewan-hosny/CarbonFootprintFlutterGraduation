import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:graduation/screens/upload_photo/components/body.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../size_config.dart';

class UploadPhotoScreen extends StatelessWidget {

  final XFile xFile;
 static String routeName = "/upload_photo_screen";

  const UploadPhotoScreen({Key? key, required this.xFile}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(
      body: Body(xFile: xFile,),
    );
  }
}

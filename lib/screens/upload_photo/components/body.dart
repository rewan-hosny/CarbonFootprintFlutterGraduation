import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../../test_open_camera/componets/body.dart';
import '../../test_open_camera/componets/display_picked_picture.dart';



class Body extends StatelessWidget {
  final XFile xFile;
  const Body({Key? key, required this.xFile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//         return Scaffold(
//       body: Center(
// child: xFile == null ? new Text("No image Selected"):new Image.file(File(xFile.path)),
//
//
//       ),
//         );

  return DisplayPictureScreen(
    // Pass the automatically generated path to
    // the DisplayPictureScreen widget.
    imagePath: xFile.path,
  );
  }
}

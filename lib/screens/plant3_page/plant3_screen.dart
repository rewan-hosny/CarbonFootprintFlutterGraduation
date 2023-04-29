import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';

import '../plant3_page/components/body.dart';

class Plant3Screen extends StatelessWidget {
  final String flowerType;
  final String flowerStatus;
  final String ImagePath;
  static String routeName="/plant3_screen";
  const Plant3Screen({Key? key, required this.flowerType, required this.flowerStatus, required this.ImagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(flowerType: flowerType,flowerStatus: flowerStatus,ImagePath: ImagePath,),
    );
  }
}
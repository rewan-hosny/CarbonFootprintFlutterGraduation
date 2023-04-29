import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';
import '../stuff_download/components/body.dart';

class StuffDownloadScreen extends StatelessWidget {
  static String routeName="/stuff_download_screen";
  const StuffDownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
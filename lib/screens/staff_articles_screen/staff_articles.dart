import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/size_config.dart';

import '../staff_articles_screen/components/body.dart';

class StaffArticleScreen extends StatelessWidget {
  static String routeName="/staff_articles_screen";
  const StaffArticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
      body: Body(),
    );
  }
}

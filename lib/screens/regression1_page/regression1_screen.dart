import 'package:flutter/material.dart';

import '../regression1_page/components/body.dart';

class Regression1Screen extends StatelessWidget {
  static String routeName="/regression1_screen";
  const Regression1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

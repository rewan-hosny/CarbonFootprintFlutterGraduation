import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../target_progress/components/body.dart';
class TargetProgressScreen extends StatelessWidget {
  static String routeName="/stuff_target_progress_screen";
  const TargetProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
          body: Body(),
    );
  }
}

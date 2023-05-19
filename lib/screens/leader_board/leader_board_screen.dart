import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../leader_board/components/body.dart';
class LeaderBoardScreen extends StatelessWidget {
  static String routeName="/leader_board_screen";
  const LeaderBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

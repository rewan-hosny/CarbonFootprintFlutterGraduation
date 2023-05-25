



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../staff_leader_bord/components/body.dart';


class StaffLeaderBoard extends StatefulWidget {
  static String routeName="/Staff_Leader_board_screen";
  const StaffLeaderBoard({Key? key}) : super(key: key);

  @override
  State<StaffLeaderBoard> createState() => _StaffLeaderBoardState();
}

class _StaffLeaderBoardState extends State<StaffLeaderBoard> {
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

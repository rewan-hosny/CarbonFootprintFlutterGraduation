import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../staff_chooseDU_page/components/body.dart';

class StaffChoosePage extends StatelessWidget {
  const StaffChoosePage({Key? key}) : super(key: key);
  static String routeName="/Staff_chooseDU_Question";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

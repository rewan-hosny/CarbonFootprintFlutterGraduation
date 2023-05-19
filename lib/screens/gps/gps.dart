import 'package:graduation/size_config.dart';

import 'package:flutter/cupertino.dart';

import '../gps/components/body.dart';


class Gps extends StatefulWidget {
  const Gps({Key? key}) : super(key: key);
  static String routeName="/gps";


  @override
  State<Gps> createState() => _GpsState();

}

class _GpsState extends State<Gps> {
  @override
  Widget build(BuildContext context) {
    return Body();
  }
}

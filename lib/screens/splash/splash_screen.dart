import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../size_config.dart';
import 'package:graduation/screens/splash/components/body.dart';
import 'package:graduation/screens/splash/splash_screen.dart';

// Future main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//
//   final prefs = await SharedPreferences.getInstance();
//   final ShowHome = prefs.getBool('ShowHome')?? false;
//   runApp(Body(ShowHome: ShowHome));
// }
class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

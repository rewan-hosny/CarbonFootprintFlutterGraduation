import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import '../../../services/api_service.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _latitude = '';
  String _longitude = '';

  @override
  void initState() {
    super.initState();
    APIService.sendLocationRequest().then((_) async {
      Position position = await APIService.getLocation();
      setState(() {
        _latitude = position.latitude.toString();
        _longitude = position.longitude.toString();
        print(_latitude);
        print(_longitude);
      });
    }).catchError((error) {
      // Handle location retrieval errors
      print(error.toString());
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تحديد الموقع'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'خط العرض: $_latitude',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'خط الطول: $_longitude',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

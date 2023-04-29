import 'package:flutter/material.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../size_config.dart';
// String url_test =  Platform.isAndroid ? 'http://192.168.1.6:5000' : 'http://192.168.1.6:5000' 'http://localhost:5000';
// String final_url = url_test+"/api/login/google";
final Uri _url = Uri.parse("http://192.168.1.6:5000/genTemp?start=2010&end=2020");
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
class WebPageScreen extends StatelessWidget {
  static String routeName ="/web_page_view";
  WebPageScreen({Key? key}) : super(key: key);



  // _launchURL(url) async {
  //   var link = "https://hiddenwords.page.link/deposit";
  //
  //   if (await canLaunch(link)) {
  //     await launch(link,
  //         forceWebView: false, enableJavaScript: true, forceSafariVC:
  //         false);
  //   } else {
  //     throw 'Could not launch $link';
  //   }
  // }
 // late WebViewController _controller;


  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
        body: Column(
          children: [
            Center(

              child: ElevatedButton(
              onPressed: _launchUrl,
              child: Text('Show Flutter homepage'),
            ),





    //       WebView(
    //       initialUrl:"http://localhost:5000/api/login/google",
    //       javascriptMode:JavascriptMode.unrestricted,
    //         navigationDelegate: (NavigationRequest request) {
    //           if (request.url.contains(RegExp('^intent://.*\$')))  {
    //             _launchURL(request.url);
    //             return NavigationDecision.prevent;
    //           }
    //           return NavigationDecision.navigate;
    //         },
    //       // onWebViewCreated:(WebViewController webViewController ){
    //       //   _controller = webViewController;
    //       // }
    // ),
            ),

            Text("http://192.168.1.6:5000/genTemp?start=2010&end=2020",
              style: TextStyle(
                  color: Color(0xFF474747),
                  fontSize: 19,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),),
          ],
        )));
  }
}


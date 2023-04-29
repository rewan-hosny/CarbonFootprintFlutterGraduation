// import 'package:flutter/material.dart';
// import 'package:graduation/components/default_button.dart';
// import 'package:graduation/constants.dart';
// import 'package:graduation/size_config.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:chewie/chewie.dart';
// import 'package:video_player/video_player.dart';
//
// class Body extends StatelessWidget {
//    Body({Key? key}) : super(key: key);
//
//   final videoPlayerController =VideoPlayerController();
//   ChewieController? chewieController;
//
//
//    @override
//    void dispose(){
//      videoPlayerController.dispose();
//      chewieController!.dispose();
//      //super.dispose();
//    }
//
//
//   @override
//   void initState(){
//     //super.initState();
//     _initPlayer();
//   }
//
//   void _initPlayer() async{
//     videoPlayerController = VideoPlayerController.asset("assets/new/Video.mp4");
//     await videoPlayerController.initialize();
//
//     chewieController = ChewieController(
//     videoPlayerController: videoPlayerController,
//       autoPlay: true,
//       looping: true,
//       autoInitialize: true,
//       showControls: false,
//     );
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: PageView(
//             children: [
//                   Column(
//                     children: [
//                       // Expanded(child: Chewie(controller: chewieController!)),
//                       //chewieController!=null?
//                     ],
//                   ),
//               Center(child: CircularProgressIndicator()),
//               Row(
//                 children: [
//                   Expanded(
//                     child: Align(
//                       alignment: FractionalOffset.bottomCenter,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: LightModeLightGreenColor,
//                           borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(150)),
//                         ),
//                         width: SizeConfig.screenWidth,
//                         height: 320,
//                         child: Column(
//                           children: [
//                             //SizedBox(height: SizeConfig.screenHeight * 0.000,),
//                             Container(
//                               width: 58,
//                               height: 6,
//                               decoration: BoxDecoration(
//                                 color: LightModeMainColor,
//                                 borderRadius: BorderRadius.all(Radius.circular(20)),
//                               ),
//                             ),
//                             SizedBox(height: SizeConfig.screenHeight * 0.05),
//                             Text("How Big Is Your Environmental Footprint?",
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   color: Color(0xFF474747),
//                                   fontSize: 22,
//                                   fontFamily: "Poppins",
//                                 )),
//                             SizedBox(height: SizeConfig.screenHeight * 0.05),
//
//                             ElevatedButton(
//                               onPressed: () {},
//                               child: Text(
//                                 "Calculate Your Footprint",
//                                 style: TextStyle(fontSize: 20),
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.all(
//                                         Radius.circular(9))),
//                                 padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
//                                 primary: Colors.white,
//                                 backgroundColor: LightModeMainColor,
//                               ),
//                             )
//                           ],
//                         ),
//                         padding: EdgeInsets.all(25),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ]
//     ),
//
//       ),
//     );
//   }
// }
//

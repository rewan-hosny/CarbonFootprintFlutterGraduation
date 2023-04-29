import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation/services/api_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import '../screens/edit_profile/edit_profile_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../size_config.dart';
import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';

class EditProfileTopBar extends StatefulWidget {
  final Map<String,String> currentUserData;
  const EditProfileTopBar({Key? key, required this.currentUserData}) : super(key: key);
 final String imagePath = "";
  @override
  State<EditProfileTopBar> createState() => _EditProfileTopBarState();
}

class _EditProfileTopBarState extends State<EditProfileTopBar> {
  String imagePath = "";

 // updatePath()async{
 //   SharedPreferences prefs = await SharedPreferences.getInstance();
 //   imagePath = prefs.getString('currentImagePath')!;
 // }

  @override
  void initState(){
    print("I'm in init state and current image path is");
    print(widget.currentUserData["imagePath"]);
  }
  Widget _buildChild()  {
    imageCache.clear();
    imageCache.clearLiveImages();
    if (widget.currentUserData["imagePath"] == "") {
      print("I am in case 1");
      return CircleAvatar(
        backgroundImage:AssetImage("assets/images/profile_img.png"),
        radius: 220,
      );

      // return  Image.asset("assets/images/profile_img.png");
    } else if (widget.currentUserData["imagePath"] != "") {
      print("To make sure widget current image path is :");
      print(widget.currentUserData["imagePath"] !);
      print("I am in case 2");
      // return CircleAvatar(
      //   backgroundImage: NetworkImage(widget.currentUserData["imagePath"] ! ),
      //   radius: 220,
      // );

      return ClipOval(

        child: Image.network(widget.currentUserData["imagePath"] !,
          key: ValueKey(new Random().nextInt(100)),      width: 120,
          height: 120,
          fit: BoxFit.cover,


        ),
      );
    //  return Image.network(imagePath);
    }
    return CircleAvatar(
      backgroundImage: AssetImage("assets/images/profile_img.png"),
      radius: 220,
    );
  }

  Future getImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    // setState(() {
    //   _image =image;
    // });
    image == null
        ? print("failed")
        : prefs.setString('profileImagePath', image.path!);
    print("image path sent to shared preference");
    APIService.UploadProfileImage().then((response) => {
          if (response.status == "Success")
            {print("uploaded image succeded"),
              print(response.status),
              // imagePath = image!.path!,
              // print("imagePath"+imagePath),



              APIService.getCurrentUserData().then((response) => {
               print("firebase image path"),
                print(response.image!),
                setState(() {
              //  imagePath = response.image!;
              //  prefs.setString('currentImagePath', response.image!);
              //  imagePath = prefs.getString('currentImagePath')!;
print("I entered set state function");

prefs.setString('currentImagePath', response.image!);

print("currentImagePath");
print(prefs.getString('currentImagePath')!);
                  widget.currentUserData["imagePath"]=prefs.getString('currentImagePath')!;
                  imagePath = response.image!;
// Navigator.push(
//     context,
//     MaterialPageRoute(
//         builder: (context) =>
//             EditProfile(currentUserData:widget.currentUserData,)));
// Navigator.pushReplacement(
//     context,
//     MaterialPageRoute(
//         builder: (BuildContext context) => super.widget));
print("I finished set state function");


                })


              }),






            }

          else
            {print("uploaded image failed")}
        });



    // imagePath = image!.path;

    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) => UploadPhotoScreen(
    //           xFile: image,
    //
    //         ))
    //
    //
    // );
  }

  @override
  Widget build(BuildContext context) {
    imageCache.clear();
    imageCache.clearLiveImages();
    return SizedBox(
      // width: double.infinity,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenHeight(40),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    primary: Colors.white,
                    backgroundColor: LightModeMainColor,
                  ),
                  onPressed: () {
                   // Navigator.pushNamed(context, ProfileScreen.routeName );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen(
                                currentUserData: widget.currentUserData,

                            ))


                    );



                    //     .then((_) {
                    //   // This block runs when you have returned back to the 1st Page from 2nd.
                    //   // setState(() {
                    //   //   // Call setState to refresh the page.
                    //   // });
                    // });


                  },
                  child: Image.asset("assets/icons/mdi_arrow-back.png",
                      height: SizeConfig.screenHeight * 0.06),
                ),
              ),
            ],
          )
          //   SizedBox(width: 80,),

          ,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   width: getProportionateScreenWidth(40),
              //   height: getProportionateScreenHeight(40),
              //   child: TextButton(
              //     style: TextButton.styleFrom(
              //       shape:
              //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              //       primary: Colors.white,
              //       backgroundColor: LightModeMainColor,
              //     ),
              //     onPressed: (){},
              //     child: Image.asset("assets/icons/mdi_arrow-back.png"
              //         ,height: SizeConfig.screenHeight*0.06),
              //   ),
              // ),
              // SizedBox(width: 80,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // SizedBox(height: 10,),
                  TextButton(
                    onPressed: () {
                      getImage();
                    },
                    child: Container(
                        width: getProportionateScreenWidth(80),
                        height: getProportionateScreenHeight(80),
                        child:_buildChild()

                        //   Image.asset("assets/images/profile_img.png")
                        //   Image.file(File(imagePath)),

                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Edit Your Profile",
                      style: ProfileItemHeadline,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

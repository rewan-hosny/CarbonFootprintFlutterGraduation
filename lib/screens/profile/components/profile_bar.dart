import 'dart:math';

import 'package:flutter/material.dart';
import 'package:graduation/screens/edit_profile/edit_profile_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({Key? key, this.name, this.description, this.image ,required this.currentUserData})
      : super(key: key);
  final String? name;
  final String? description;
  final String? image;
  final Map<String,String> currentUserData;




  Widget _buildChild() {
    print("testPassImagePath in profile bar");
    print(image);
    print("currentUserData[imagePath]");
    print(currentUserData["imagePath"]);
    if (image == "") {
      return CircleAvatar(
        backgroundImage: AssetImage("assets/images/profile_img.png"),
        radius: 220,
      );

      // return  Image.asset("assets/images/profile_img.png");
    } else if (image != "") {
      // return CircleAvatar(
      //   backgroundImage: NetworkImage(
      //       image??"https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50"),
      //   radius: 220,
      // );
      //

      return ClipOval(

        child: Image.network( image??"https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50",
          key: ValueKey(new Random().nextInt(100)),      width: 120,
          height: 120,
          fit: BoxFit.cover,


        ),
      );

        //return Image(image: CachedNetworkImageProvider(currentUserData["imagePath"]!));
    }
    return CircleAvatar(
      backgroundImage: AssetImage("assets/images/profile.png"),
      radius: 220,
    );
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: SizedBox(
                    width: getProportionateScreenWidth(80),
                    height: getProportionateScreenHeight(80),
                    child: _buildChild() ,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                //    Text(name! + "\n" + description!),
                //

Text.rich(

  TextSpan(
    text: name!+"\n",
    style: ProfileUserName,
    children:  <InlineSpan>[
  TextSpan(
  text: description!,
    style: Profiledescreption,
  )]


),




)





                    //Text(description!)
                  ],
                )
              ],
            ),
            TextButton(
              // style: TextButton.styleFrom(
              //   shape:
              //   RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              //   primary: Colors.white,
              //   backgroundColor: LightModeMainColor,
              // ),
              onPressed: () {
                //Navigator.pushNamed(context, EditProfile.routeName);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EditProfile(currentUserData:currentUserData,)));
              },
              child: Image.asset("assets/icons/edit_pen.png",
                  height: SizeConfig.screenHeight * 0.035),
            ),
          ],
        ),
      ),
    );
  }
}


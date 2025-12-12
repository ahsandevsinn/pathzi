import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:pathzi/core/images/images.dart';
import 'package:pathzi/core/strings/strings.dart';

class SettingProfileWidget extends StatelessWidget {
  const SettingProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(radius: 60, backgroundImage: AssetImage(AppImages.job)),
        Gap(5.0).column,
        AppText(text: 'Hey, Doctor Anthony',fontSize: 18,fontWeight: FontWeight.w700,),
      ],
    );
  }
}


class SettingProfileEditWidget extends StatelessWidget {
  const SettingProfileEditWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return     Stack(
children: [
  CircleAvatar(radius: 50, backgroundImage: AssetImage(AppImages.job)),
  Positioned(
          right: 0, 
          bottom: 0,
          child: CircleAvatar(
            radius: 15, 
            backgroundColor: Colors.white,
            child: IconButton(
              icon: Icon(Icons.edit, color: Colors.black,size: 20,), 
              onPressed: () {
               
              },
            ),
          ),)
],
    );
  }
}
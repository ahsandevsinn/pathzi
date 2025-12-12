import 'package:flutter/material.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';

class SocialButton extends StatelessWidget {
  final String image;
  final String text;
  const SocialButton({super.key, this.image = "", this.text = ""});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 50,
      width: width * 0.60,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
      Image.asset(image),
      AppText(text: text,fontWeight: FontWeight.w700,fontSize: 16,)

      ],),
    );
  }
}

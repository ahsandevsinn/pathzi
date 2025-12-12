import 'package:flutter/material.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         SizedBox(
          width: width*0.30,
          child: Divider(
            thickness: 2,
            color: AppColors.black,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text("OR"), 
        ),
       SizedBox(
          width: width*0.30,
          child: Divider(
            thickness: 2,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}

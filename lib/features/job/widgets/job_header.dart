import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';

class JobHeader extends StatelessWidget {
  const JobHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return     Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 250,
                  child: AppText(
                    text: "IT Engineer required at company",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.computer, color: AppColors.white),
                  ),
                ),
              ],
            );
        
  }
}
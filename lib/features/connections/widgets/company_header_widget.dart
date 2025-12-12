import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:pathzi/core/images/images.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';

class CompanyHeaderWidget extends StatelessWidget {
  const CompanyHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(AppImages.microsoft),
              Gap(5.0).row,

              AppText(
                text: "Microsoft",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
         
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),

            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: AppText(text: "New", color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}

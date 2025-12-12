import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:go_router/go_router.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:pathzi/shared/widgets/custom_widget.dart';

class ConnectConfirmationAlert extends StatelessWidget {
  const ConnectConfirmationAlert({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return AlertDialog(
      contentPadding:
          EdgeInsets.zero, // Remove any external padding from the AlertDialog
      insetPadding: EdgeInsets.zero,
      backgroundColor: AppColors.transparent,
      content: Container(
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 180,
              width: width * 0.90,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blackWith25Opacity,
                    offset: Offset(0, 4),
                    blurRadius: 12,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: "Match Confirmation",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                  Gap(10.0).column,

                  AppText(
                    text:
                        "Would you like us to connect you with colleges or employers offering this path?",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                    textAlign: TextAlign.center,
                  ),
                  // Gap(20.0).column,

                  // Gap(20.0).column,
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  text: "Yes",
                  color: AppColors.primary,
                  textColor: AppColors.white,
                  fontSize: 20,
                  width: width * 0.40,
                  onTap: () {
                    context.pop();
                  },
                ),
                CustomButton(
                  text: "Not Now",
                  color: AppColors.secondary,
                  textColor: AppColors.white,
                  fontSize: 20,
                  width: width * 0.40,
                  onTap: () {
                    context.pop();
                   
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

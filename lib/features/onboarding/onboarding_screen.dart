import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:go_router/go_router.dart';
import 'package:pathzi/Routes/routes.dart';
import 'package:pathzi/core/images/images.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:pathzi/shared/widgets/custom_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
      
          children: [
            Container(
              height: height*0.50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.amber,
      
                image: DecorationImage(
                  image: AssetImage(AppImages.onboarding),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(200, 100),
                  bottomRight: Radius.elliptical(200, 100),
                ),
              ),
            ),
            Gap(10.0).column,
            AppText(text: "Welcome", fontSize: 38, fontWeight: FontWeight.w700),
      
            AppText(
              text: " 'Swipe into your future.' ",
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: AppColors.primary,
            ),
            AppText(
              text:
                  "Discover careers, courses, and\napprenticeships tailored to you",
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            ),
            Gap(height*0.10).column,
            CustomButton(
              text: "Get Started",
              color: AppColors.primary,
              textColor: AppColors.white,
              fontSize: 20,
              width: 300,
              onTap: () {
        context.pushNamed(AppRouteNames.signUp);
                
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pathzi/Routes/routes.dart';
import 'package:pathzi/core/images/images.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),(){
      context.pushNamed(AppRouteNames.onboarding);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.splash),fit: BoxFit.fill)
        ),
        child:   Padding(
          padding:  EdgeInsets.only(bottom: height*0.65),
          child: Center(child: AppText(text: "Pathzi",fontSize: 60,color: AppColors.primary,)),
        )
      )
    );
  }
}

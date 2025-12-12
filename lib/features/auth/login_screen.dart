import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:go_router/go_router.dart';
import 'package:pathzi/Routes/routes.dart';
import 'package:pathzi/core/images/images.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:pathzi/features/auth/auth_widgets/or_widget.dart';
import 'package:pathzi/features/auth/auth_widgets/social_button.dart';
import 'package:pathzi/shared/widgets/custom_textfield.dart';
import 'package:pathzi/shared/widgets/custom_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.secondary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(height * 0.1).column,
            Center(
              child: AppText(
                text: "Pathzi",
                fontSize: 38,
                fontWeight: FontWeight.w700,
                color: AppColors.white,
              ),
            ),
            Gap(height * 0.1).column,

            Container(
              height: height * 0.80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Gap(MediaQuery.of(context).size.height * (10 / 812)),

                    AppText(
                      text: "Login",
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                    Gap(MediaQuery.of(context).size.height * (10 / 812)),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          CustomTextField(hintText: "Email"),
                          CustomTextField(hintText: "Password"),
                        ],
                      ),
                    ),
                    Gap(MediaQuery.of(context).size.height * (20 / 812)),

                    CustomButton(
                      text: "Login",
                      color: AppColors.secondary,
                      textColor: AppColors.white,
                      fontSize: 20,
                      width: width * 0.60,
                      onTap: () {
                        context.pushNamed(AppRouteNames.bottom_navbar);
                      },
                    ),
                    Gap(MediaQuery.of(context).size.height * (10 / 812)),

                    OrWidget(),
                    Gap(MediaQuery.of(context).size.height * (20 / 812)),

                    SocialButton(
                      image: AppImages.google,
                      text: "Login with Google",
                    ),
                    Gap(MediaQuery.of(context).size.height * (10 / 812)),

                    SocialButton(
                      image: AppImages.apple,
                      text: "Login with Apple",
                    ),
                    
                    Gap(20.0).column,


                    Align(
                      alignment: Alignment.centerRight,
                      child: AppText(
                        onTap: () {
                          context.pushNamed(AppRouteNames.signUp);
                        },
                        text: "Sign Up",
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: AppColors.secondary,
                      ),
                    ),
                    Gap(20.0).column,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

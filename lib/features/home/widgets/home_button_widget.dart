import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:go_router/go_router.dart';
import 'package:pathzi/Routes/routes.dart';
import 'package:pathzi/core/theme/app_colors.dart';

class HomeButtonWidget extends StatelessWidget {
  final CardSwiperController? controller;
  const HomeButtonWidget({super.key,this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.primary,
          child: IconButton(
            onPressed: () {
              controller?.swipe(CardSwiperDirection.left);
            },
            icon: Icon(Icons.cancel, color: AppColors.white, size: 30),
          ),
        ),
        CircleAvatar(
          radius: 35,
          backgroundColor: AppColors.purple,
          child: IconButton(
            onPressed: () {
              context.pushNamed(AppRouteNames.jobDescriptionScreen);
            },
            icon: Icon(Icons.error, color: AppColors.white, size: 40),
          ),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: AppColors.secondary,
          child: IconButton(
            onPressed: () {
              controller?.swipe(CardSwiperDirection.right);

            },
            icon: Icon(Icons.favorite, color: AppColors.white, size: 30),
          ),
        ),
      ],
    );
  }
}

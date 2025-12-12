import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:go_router/go_router.dart';
import 'package:pathzi/Routes/routes.dart';
import 'package:pathzi/core/images/images.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:pathzi/shared/widgets/connect_confirmation_alert.dart';
import 'package:pathzi/shared/widgets/custom_widget.dart';

class CareerJobCard extends StatelessWidget {
  const CareerJobCard({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(20),
      height: 300,
      width: width * 0.90,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.containerBorder, width: 1.0),
        color:          AppColors.white,

        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CareerJobImage(),
          Gap(20.0).column,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                text: "Connect",
                color: AppColors.primary,
                textColor: AppColors.white,
                fontSize: 20,
                width: width * 0.40,
                onTap: () {
                  showDialog(
                    barrierColor: AppColors.white.withOpacity(0.9),
                    context: context,
                    builder: (context) {
                      return ConnectConfirmationAlert();
                    },
                  );
                },
              ),
              CustomButton(
                text: "Details",
                color: AppColors.secondary,
                textColor: AppColors.white,
                fontSize: 20,
                width: width * 0.40,
                onTap: () {
                  context.pushNamed(AppRouteNames.jobDescriptionScreen);
                },
              ),
            ],
          ),

          Gap(5.0).column,
        ],
      ),
    );
  }
}

class CareerJobImage extends StatelessWidget {
  const CareerJobImage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.job),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),

          Positioned(
            top: 140,
            left: 10,
            child: Container(
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
          ),

          Container(
            height: height * 10,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [AppColors.primary, AppColors.transparent],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: AppText(
                    text: "IT Engineer",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    maxLines: 2,
                    color: AppColors.white,
                  ),
                ),

                AppText(
                  text: "60,000\$ Year",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

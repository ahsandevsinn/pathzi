import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:pathzi/core/images/images.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height*0.30,
      // height: 250,
      width: width * 0.90,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Container(
      height: height*0.30,

            // height: 300,
            width: width * 0.90,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.job),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Positioned(
            // top: 180,
            top: height*0.20,
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
        ],
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  const JobCard({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      // height: 350,
    height: height*0.50,
      width: width * 0.90,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.containerBorder, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageCard(),
          Gap(10.0).column,

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: AppText(
                    text: "IT Engineer",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    maxLines: 2,
                  ),
                ),

                AppText(
                  text: "60,000\$ Year",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ),

          Gap(10.0).column,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: AppText(
              text: "Pathways",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: AppText(
                    text: "[Apprenticeship]",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                Expanded(
                  child: AppText(
                    text: "[Short Course]",
                    fontSize: 16,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,

                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),

          Gap(5.0).column,
        ],
      ),
    );
  }
}

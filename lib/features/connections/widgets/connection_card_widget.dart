import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:go_router/go_router.dart';
import 'package:pathzi/Routes/routes.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:pathzi/features/connections/widgets/company_header_widget.dart';

class ConnectionCardWidget extends StatelessWidget {
  const ConnectionCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(20),
      height: 180,
      width: width * 0.90,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.containerBorder, width: 1.0),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CompanyHeaderWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AppText(
              text: "Tech Manager",
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Gap(10.0).column,
          GestureDetector(
            onTap: (){
              context.pushNamed(AppRouteNames.provider_profile_screen);
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.containerBorder, width: 1.0),
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 10, width: 10),
                    AppText(
                      text: "See More",
                      fontSize: 20,
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    Icon(Icons.arrow_forward, color: AppColors.white),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

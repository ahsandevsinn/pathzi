import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:pathzi/core/images/images.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:pathzi/features/job/widgets/job_header.dart';
import 'package:pathzi/shared/widgets/connect_confirmation_alert.dart';
import 'package:pathzi/shared/widgets/custom_appbar_widget.dart';
import 'package:pathzi/shared/widgets/custom_column.dart';
import 'package:pathzi/shared/widgets/custom_widget.dart';

class ProviderProfileScreen extends StatefulWidget {
  const ProviderProfileScreen({super.key});

  @override
  State<ProviderProfileScreen> createState() => _ProviderProfileScreenState();
}

class _ProviderProfileScreenState extends State<ProviderProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppbarWidget(text: "Provider Profile"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20.0).column,
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

              JobHeader(),
              Gap(10.0).column,
              CustomColumn(title: "Salary", subTitle: "60,000\$ Year"),
              Gap(10.0).column,
              CustomColumn(
                title: "Pathways",
                subTitle: "[Apprenticeship] [Short Course]",
              ),
              Gap(10.0).column,
              CustomColumn(
                title: "Role",
                subTitle:
                    "A Digital Learning Assistant helps students and teachers by setting up online lessons, managing learning tools, and supporting interactive study sessions. This role is ideal for someone who enjoys technology and education.",
              ),
              Gap(10.0).column,
              CustomColumn(title: "Skills", subTitle: "PhP, React, Python"),
              Gap(10.0).column,
              CustomColumn(title: "Duration", subTitle: "2 Years"),
              Gap(height * 0.10).column,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    text: "Save",
                    color: AppColors.primary,
                    textColor: AppColors.white,
                    fontSize: 20,
                    width: width * 0.40,
                    onTap: () {},
                  ),
                  CustomButton(
                    text: "Connect",
                    color: AppColors.secondary,
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
                ],
              ),

              Gap(20.0).column,
            ],
          ),
        ),
      ),
    );
  }
}

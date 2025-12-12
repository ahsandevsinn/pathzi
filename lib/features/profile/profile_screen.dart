import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:go_router/go_router.dart';
import 'package:pathzi/Routes/routes.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:pathzi/features/profile/widgets/setting_item_widget.dart';
import 'package:pathzi/features/profile/widgets/setting_profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Gap(20.0).column,

              SettingProfileWidget(),
            

              Gap(40.0).column,
              SettingsItem(
                title: "Profile",
                onTap: () {
                  context.pushNamed(AppRouteNames.edit_profile);
                },
              ),
              Gap(15.0).column,

              SettingsItem(title: "Notification", onTap: () {}),
              Gap(15.0).column,

              SettingsItem(
                title: "Language",
                onTap: () {
                  context.pushNamed(AppRouteNames.language_screen);
                },
              ),
              Gap(15.0).column,

              SettingsItem(title: "Privacy Policy", onTap: () {}),
              Gap(15.0).column,

              SettingsItem(title: "Help Center", onTap: () {}),
              Gap(15.0).column,

              SettingsItem(
                title: "Logout",
                onTap: () {},
                color: AppColors.secondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

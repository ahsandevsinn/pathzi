import 'package:flutter/material.dart';
import 'package:pathzi/core/images/images.dart';
import 'package:pathzi/core/theme/app_colors.dart';

class HomeAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbarWidget({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 10,top:  10),
      child: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        elevation: 0,
        centerTitle: false,
        leading: CircleAvatar(
          backgroundImage: AssetImage(AppImages.onboarding),
        ),
        title: const Text(
          'Hello, Lisa',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: AppColors.primary),
            onPressed: () {
              
            },
          ),
        ],
      ),
    );
  
  }
}
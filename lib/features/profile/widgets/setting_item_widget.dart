import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';

class SettingsItem extends StatelessWidget {

  final String title;
  final Color color;
  final VoidCallback onTap;

  const SettingsItem({
  
    required this.title,
    required this.onTap,
    this.color = AppColors.black,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(text: title,fontWeight: FontWeight.w500,color: color,fontSize: 16,),
          Divider(),
        ],
      ),
    );
    
  }
}
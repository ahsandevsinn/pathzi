import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:pathzi/features/home/widgets/home_appbar_widget.dart';
import 'package:pathzi/features/home/widgets/job_card.dart';
import 'package:pathzi/features/mycareers/widgets/career_job_card.dart';

class MycareerScreen extends StatefulWidget {
  const MycareerScreen({super.key});

  @override
  State<MycareerScreen> createState() => _MycareerScreenState();
}

class _MycareerScreenState extends State<MycareerScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
      double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: HomeAppbarWidget(),
      body: ListView.builder(
    

        shrinkWrap: true,
        itemBuilder: (context,index){
        return CareerJobCard();
      })
      
          );
  }


}
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:pathzi/features/home/widgets/home_appbar_widget.dart';
import 'package:pathzi/features/home/widgets/home_button_widget.dart';
import 'package:pathzi/features/home/widgets/job_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    List cards = [JobCard(), JobCard(), JobCard()];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
      double height = MediaQuery.of(context).size.height;
  CardSwiperController _controller = CardSwiperController();
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: HomeAppbarWidget(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(20.0).column,
            Flexible(
              child: CardSwiper(
                controller: _controller,
                allowedSwipeDirection: AllowedSwipeDirection.symmetric(
                  horizontal: true,
                ),
                cardsCount: cards.length,
                cardBuilder:
                    (context, index, percentThresholdX, percentThresholdY) =>
                        cards[index],
              ),
            ),
            // JobCard(),
            // Gap(height*0.10).column,
            HomeButtonWidget(controller: _controller,),
            Gap(20.0).column,

          ],
        ),
      ),
    );
  }


}

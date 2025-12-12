import 'package:flutter/widgets.dart';
import 'package:pathzi/core/strings/strings.dart';
import 'package:pathzi/core/theme/app_colors.dart';
import 'package:readmore/readmore.dart';

class CustomColumn extends StatelessWidget {
  final String title;
  final String subTitle;
  const CustomColumn({super.key, this.title = "", this.subTitle = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(text: title, fontSize: 18, fontWeight: FontWeight.w600),

        ReadMoreText(
          subTitle,
          trimMode: TrimMode.Line,
          trimLines: 2,
          colorClickableText: AppColors.black,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          lessStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

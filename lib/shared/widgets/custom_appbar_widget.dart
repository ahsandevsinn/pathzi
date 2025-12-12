import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pathzi/Routes/routes.dart';
import 'package:pathzi/core/images/images.dart';
import 'package:pathzi/core/theme/app_colors.dart';

class CustomAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {

  final String text;
  final bool isBackButton;
  const CustomAppbarWidget({super.key, this.text = "",this.isBackButton = false});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: AppColors.white,
      backgroundColor: AppColors.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      centerTitle: true,
      leading: isBackButton? IconButton(
        onPressed: () {
          context.pushNamed(AppRouteNames.bottom_navbar);
        },
        icon: Icon(Icons.arrow_back),
      ) : null,
      title: Text(
        text.toString(),
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class CustomAppbarWidgetWithoutbackButton extends StatelessWidget
    implements PreferredSizeWidget {

  final String text;

  const CustomAppbarWidgetWithoutbackButton({super.key, this.text = ""});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: AppColors.white,
      backgroundColor: AppColors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      
      title: Text(
        text.toString(),
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}


class CustomAppbarSecondaryWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String text;
  const CustomAppbarSecondaryWidget({super.key, this.text = ""});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: AppColors.white,
      backgroundColor: AppColors.white,
      elevation: 0,
      centerTitle: false,
      automaticallyImplyLeading: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Center(
          child: GestureDetector(
            onTap: () {
              context.pushNamed(AppRouteNames.bottom_navbar);
              
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Center(child: Icon(Icons.arrow_back_ios, size: 15,color: AppColors.white,)),
              ),
            ),
    
          ),
        ),
      ),
      title: Text(
        text.toString(),
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}

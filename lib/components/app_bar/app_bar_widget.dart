import 'package:bookia/core/constants/app_images.dart';
import 'package:bookia/core/routes/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, this.image});

  final SvgPicture? image;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              pop(context);
            },
            child: SvgPicture.asset(AppImages.backsvg),
          ),
          const Spacer(),
          GestureDetector(onTap: () {
            
          }, child: image),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

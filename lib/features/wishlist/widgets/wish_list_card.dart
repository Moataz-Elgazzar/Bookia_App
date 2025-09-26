import 'package:bookia/components/buttons/main_button.dart';
import 'package:bookia/core/constants/app_images.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class WishListCard extends StatelessWidget {
  const WishListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(AppImages.mask2png, fit: BoxFit.contain, height: 118, width: 100),
              Gap(20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text('The Republic', style: TextStyles.styleSize18(color: AppColors.greyColor)),
                        ),
                        SvgPicture.asset(AppImages.shape),
                      ],
                    ),
                    Gap(10),
                    Text('₹285', style: TextStyles.styleSize16()),
                    Gap(25),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: MainButton(title: 'Add To Cart', onPressed: () {}, width: 181.78, height: 40),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:bookia/components/app_bar/app_bar_widget.dart';
import 'package:bookia/components/buttons/main_button.dart';
import 'package:bookia/core/constants/app_images.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/features/home/models/product_best.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.models});

  final ProductBest models;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(image: SvgPicture.asset(AppImages.bookmarksvg)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 24, left: 24),
          child: Column(
            children: [
              Image.asset(models.image),
              const Gap(11),
              Text(models.name, style: TextStyles.styleSize30()),
              Text(models.type!, style: TextStyles.styleSize16(color: AppColors.primaryColor)),
              const Gap(16),
              Text(models.description, style: TextStyles.styleSize14(), textAlign: TextAlign.justify),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: SafeArea(
          child: Row(
            children: [
              Text('₹${models.price}', style: TextStyles.styleSize24()),
              const Spacer(),
              MainButton(title: 'Add To Cart', onPressed: () {}, backgroundColor: AppColors.darkColor, textColor: AppColors.wightColor, width: 212, height: 56),
            ],
          ),
        ),
      ),
    );
  }
}

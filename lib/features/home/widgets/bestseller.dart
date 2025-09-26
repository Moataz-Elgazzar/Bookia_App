import 'package:bookia/components/buttons/main_button.dart';
import 'package:bookia/core/routes/navigator.dart';
import 'package:bookia/core/routes/routes.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/features/home/models/product_best.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Bestseller extends StatelessWidget {
  const Bestseller({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 11, crossAxisSpacing: 11, mainAxisExtent: 281),
      itemBuilder: (context, index) => ProductBestCard(models: product[index]),
      itemCount: 4,
    );
  }
}

class ProductBestCard extends StatelessWidget {
  const ProductBestCard({super.key, required this.models});

  final ProductBest models;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushToWithExtra(context, Routes.details, models);
      },
      child: Container(
        decoration: BoxDecoration(color: AppColors.cardColor, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    child: Image.asset(models.image, fit: BoxFit.cover, width: double.infinity),
                  ),
                ),
              ),
              Gap(5),
              Text(models.name, style: TextStyles.styleSize18()),
              Gap(23),
              Row(
                children: [
                  Text('₹${models.price}', style: TextStyles.styleSize16()),
                  const Spacer(),
                  MainButton(title: 'Buy', onPressed: () {}, backgroundColor: AppColors.darkColor, textColor: AppColors.wightColor, width: 79, height: 28),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

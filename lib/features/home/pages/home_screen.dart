import 'package:bookia/core/constants/app_images.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/features/home/widgets/bestseller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = const [AppImages.bookspng, AppImages.blackheartpng, AppImages.maskpng];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppImages.logosvg, width: 99, height: 30),
            IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded, size: 35)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: images.length,
                itemBuilder: (context, index, realindex) {
                  return ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    child: Image.asset(images[index], fit: BoxFit.fill, width: double.infinity),
                  );
                },
                options: CarouselOptions(
                  height: 150,
                  autoPlay: true,
                  viewportFraction: 0.95,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(images.length, (index) {
                  bool isActive = index == activeIndex;
                  return AnimatedContainer(
                    duration: const Duration(microseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: isActive ? 30 : 10,
                    height: 10,
                    decoration: BoxDecoration(color: isActive ? AppColors.primaryColor : AppColors.greyColor, borderRadius: BorderRadius.circular(20)),
                  );
                }),
              ),
              Gap(31),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Best Seller', style: TextStyles.styleSize24()),
                    const Gap(15),
                    Bestseller(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

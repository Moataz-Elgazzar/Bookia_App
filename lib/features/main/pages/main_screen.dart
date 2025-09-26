import 'package:bookia/core/constants/app_images.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/features/cart/pages/cart_screen.dart';
import 'package:bookia/features/home/pages/home_screen.dart';
import 'package:bookia/features/profile/pages/profile_screen.dart';
import 'package:bookia/features/wishlist/pages/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screen = [HomeScreen(), WishlistScreen(), CartScreen(), ProfileScreen()];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(height: 50, indicatorColor: Colors.transparent, overlayColor: WidgetStateProperty.all(Colors.transparent)),
        child: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },

          backgroundColor: AppColors.wightColor,
          elevation: 0,
          destinations: [
            NavigationDestination(
              icon: Padding(padding: const EdgeInsets.only(top: 20), child: SvgPicture.asset(AppImages.homesvg)),
              label: '',
            ),
            NavigationDestination(
              icon: Padding(padding: const EdgeInsets.only(top: 20), child: SvgPicture.asset(AppImages.bookmarksvg)),
              label: '',
            ),
            NavigationDestination(
              icon: Padding(padding: const EdgeInsets.only(top: 20), child: SvgPicture.asset(AppImages.cartsvg)),
              label: '',
            ),
            NavigationDestination(
              icon: Padding(padding: const EdgeInsets.only(top: 20), child: SvgPicture.asset(AppImages.profile)),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

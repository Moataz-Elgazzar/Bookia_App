import 'package:bookia/components/buttons/main_button.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/features/cart/widgets/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: Text('My Cart', style: TextStyles.styleSize24())),
      body: SingleChildScrollView(child: Column(children: [CartCard(), Divider(), CartCard()])),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text('Total:', style: TextStyles.styleSize20(color: AppColors.greyColor)),
                Spacer(),
                Text('\$ 95.00', style: TextStyles.styleSize20()),
              ],
            ),
            Gap(13),
            MainButton(title: 'Checkout', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

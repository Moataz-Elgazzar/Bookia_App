import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/features/wishlist/widgets/wish_list_card.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: Text('Wishlist', style: TextStyles.styleSize24())),
      body: SingleChildScrollView(child: Column(children: [WishListCard(), Divider(), WishListCard()])),
    );
  }
}

import 'package:bookia/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField({super.key, required this.title, this.suffix, required this.controller});

  final String title;
  final Widget? suffix;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      decoration: InputDecoration(hintText: title, fillColor: AppColors.inputColor, filled: true, suffixIcon: suffix),
      controller: controller,
    );
  }
}

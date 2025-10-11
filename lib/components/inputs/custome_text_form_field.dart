import 'package:bookia/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField({
    super.key,
    required this.title,
    this.suffix,
    required this.controller,
    this.validator,
    this.obscureText = false,
    this.prefix, this.onChanged,
  });

  final String title;
  final Widget? suffix;
  final Widget? prefix;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Function(String)? onChanged ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: title,
        fillColor: AppColors.inputColor,
        filled: true,
        suffixIcon: suffix,
        prefixIcon: prefix,
      ),
      controller: controller,
    );
  }
}

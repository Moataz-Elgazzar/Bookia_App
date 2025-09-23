import 'package:bookia/components/app_bar/app_bar_widget.dart';
import 'package:bookia/components/buttons/main_button.dart';
import 'package:bookia/components/inputs/custome_text_form_field.dart';
import 'package:bookia/core/routes/navigator.dart';
import 'package:bookia/core/routes/routes.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreatPassword extends StatefulWidget {
  const CreatPassword({super.key});

  @override
  State<CreatPassword> createState() => _CreatPasswordState();
}

class _CreatPasswordState extends State<CreatPassword> {
  var newPasswordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create new password', style: TextStyles.styleSize30()),
              Gap(10),
              Text('Your new password must be unique from those\npreviously used.', style: TextStyles.styleSize16(color: AppColors.greyColor)),
              Gap(30),
              CustomeTextFormField(title: 'New Password', controller: newPasswordController),
              Gap(15),
              CustomeTextFormField(title: 'Confirm Password', controller: confirmPasswordController),

              Gap(30),
              MainButton(
                title: 'Reset Password',
                onPressed: () {
                  pushWithReplacement(context, Routes.passwordChanged);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

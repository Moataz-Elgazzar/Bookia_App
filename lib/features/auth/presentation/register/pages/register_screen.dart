import 'package:bookia/components/app_bar/app_bar_widget.dart';
import 'package:bookia/components/buttons/main_button.dart';
import 'package:bookia/components/inputs/custome_text_form_field.dart';
import 'package:bookia/core/routes/navigator.dart';
import 'package:bookia/core/routes/routes.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var userNameController = TextEditingController();
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
              Text('Hello! Register to get\nstarted', style: TextStyles.styleSize30()),
              Gap(32),
              CustomeTextFormField(title: 'Username', controller: userNameController),
              Gap(11),
              CustomeTextFormField(title: 'Email', controller: emailController),
              Gap(11),
              CustomeTextFormField(title: 'Password', controller: passwordController),
              Gap(11),
              CustomeTextFormField(title: 'Confirm password', controller: confirmPasswordController),

              Gap(30),
              MainButton(title: 'Register', onPressed: () {}),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Already have an account?', style: TextStyles.styleSize14()),
          TextButton(
            style: TextButton.styleFrom(overlayColor: Colors.transparent),
            onPressed: () {
              pushWithReplacement(context, Routes.login);
            },
            child: Text('Login Now', style: TextStyles.styleSize14(color: AppColors.primaryColor)),
          ),
        ],
      ),
    );
  }
}

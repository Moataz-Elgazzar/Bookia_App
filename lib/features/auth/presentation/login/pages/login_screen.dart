import 'package:bookia/components/app_bar/app_bar_widget.dart';
import 'package:bookia/components/buttons/main_button.dart';
import 'package:bookia/components/inputs/custome_text_form_field.dart';
import 'package:bookia/core/constants/app_images.dart';
import 'package:bookia/core/routes/navigator.dart';
import 'package:bookia/core/routes/routes.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:bookia/features/auth/presentation/login/widgets/social_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
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
              Text('Welcome back! Glad\nto see you, Again!', style: TextStyles.styleSize30()),
              Gap(32),
              CustomeTextFormField(title: 'Enter your email', controller: emailController),
              Gap(15),
              CustomeTextFormField(
                title: 'Enter your password',
                controller: passwordController,
                suffix: Row(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SvgPicture.asset(AppImages.eyesvg)]),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: TextButton.styleFrom(overlayColor: Colors.transparent, padding: EdgeInsets.all(0)),
                  onPressed: () {
                    pushWithReplacement(context, Routes.forgetPassword);
                  },
                  child: Text('Forgot Password?', style: TextStyles.styleSize14()),
                ),
              ),
              Gap(30),
              MainButton(title: 'Login', onPressed: () {}),
              Gap(34),
              SocialWidget(),
              Gap(21),
              GoogleAndApple(title: 'Google', image: SvgPicture.asset(AppImages.googlesvg)),
              Gap(15),
              GoogleAndApple(title: 'Apple', image: SvgPicture.asset(AppImages.applesvg)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Don’t have an account?', style: TextStyles.styleSize14()),
          TextButton(
            style: TextButton.styleFrom(overlayColor: Colors.transparent),
            onPressed: () {
              pushWithReplacement(context, Routes.register);
            },
            child: Text('Register Now', style: TextStyles.styleSize14(color: AppColors.primaryColor)),
          ),
        ],
      ),
    );
  }
}

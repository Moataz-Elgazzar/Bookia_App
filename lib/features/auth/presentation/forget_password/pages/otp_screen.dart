import 'package:bookia/components/app_bar/app_bar_widget.dart';
import 'package:bookia/components/buttons/main_button.dart';
import 'package:bookia/core/routes/navigator.dart';
import 'package:bookia/core/routes/routes.dart';
import 'package:bookia/core/utils/colors.dart';
import 'package:bookia/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var pinController = TextEditingController();

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
              Text('OTP Verification', style: TextStyles.styleSize30()),
              Gap(10),
              Text('Enter the verification code we just sent on\nyour email address.', style: TextStyles.styleSize16(color: AppColors.greyColor)),
              Gap(30),
              Center(
                child: Pinput(
                  controller: pinController,
                  
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  defaultPinTheme: PinTheme(
                    width: 70,
                    height: 60,
                    textStyle: TextStyles.styleSize20(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.primaryColor),
                    ),
                  ),
                  length: 4,
                  showCursor: true,
                  onCompleted: (value) {},
                ),
              ),
              Gap(30),
              MainButton(
                title: 'Verify',
                onPressed: () {
                  pushWithReplacement(context, Routes.creatPassword);
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Didn’t received code?', style: TextStyles.styleSize14()),
          TextButton(
            style: TextButton.styleFrom(overlayColor: Colors.transparent),
            onPressed: () {
              pushWithReplacement(context, Routes.forgetPassword);
            },
            child: Text('Resend', style: TextStyles.styleSize14(color: AppColors.primaryColor)),
          ),
        ],
      ),
    );
  }
}

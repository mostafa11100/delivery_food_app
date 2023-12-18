import 'package:flutter/material.dart';
import 'package:teacher_app/const/application_text.dart';
import 'package:teacher_app/const/color_app.dart';
import 'package:teacher_app/const/image_path.dart';
import 'package:teacher_app/const/text_style.dart';
import 'package:teacher_app/utils/Custom_text.dart';
import 'package:teacher_app/utils/custom_button.dart';
import 'package:teacher_app/utils/custom_text_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            Image.asset(
              ImagePath.boyWrite,
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 2,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomText(
              text: AppText.splashText1,
              styl: TextStyleconst.textstyle20,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomText(
              text: AppText.splashText2,
              styl: TextStyleconst.textstyle18
                  .copyWith(color: ColorApp.ginralColor),
            ),
            const SizedBox(height: 60),
            CustomButton(
              onpress: () {},
              text: "Sing Up",
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonText(onpress: () {}, text: "Skip")
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:teacher_app/const/color_app.dart';
import 'package:teacher_app/const/text_style.dart';
import 'package:teacher_app/utils/custom_text.dart';
import 'package:teacher_app/utils/custom_text_button.dart';

class RowButton extends StatelessWidget {
  const RowButton({super.key, required this.onpress, required this.text});
  final Function() onpress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: "Don't you have acount ?",
          styl: TextStyleconst.textstyle18andw400
              .copyWith(color: ColorApp.ginralColor),
        ),
        CustomButtonText(
          onpress: onpress,
          text: text,
          styl: TextStyleconst.textstyle18andw400
              .copyWith(color: ColorApp.buttonColor),
        )
      ],
    );
  }
}

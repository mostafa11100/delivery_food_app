import 'package:flutter/material.dart';
import 'package:teacher_app/const/color_app.dart';
import 'package:teacher_app/const/text_style.dart';
import 'package:teacher_app/utils/custom_text.dart';

// ignore: must_be_immutable
class CustomButtonText extends StatelessWidget {
  CustomButtonText(
      {super.key, required this.onpress, this.styl, required this.text});
  final Function() onpress;
  TextStyle? styl;
  String text;
  double? h;
  double? w;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: TextButton(
      onPressed: onpress,
      child: CustomText(
          text: text,
          styl: styl ??
              TextStyleconst.textstyle18andw400
                  .copyWith(color: ColorApp.buttonColor)),
    ));
  }
}

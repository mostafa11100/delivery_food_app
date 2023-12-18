import 'package:flutter/material.dart';
import 'package:teacher_app/const/color_app.dart';
import 'package:teacher_app/const/text_style.dart';
import 'package:teacher_app/utils/custom_text.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, required this.onpress, this.styl, required this.text});
  final Function() onpress;
  TextStyle? styl;
  String text;
  double? h;
  double? w;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorApp.buttonColor),
        height: h ?? 55,
        width: w ?? 230,
        child: TextButton(
          onPressed: onpress,
          child: CustomText(
              text: text,
              styl: styl ??
                  TextStyleconst.textstyle20.copyWith(color: Colors.white)),
        ));
  }
}

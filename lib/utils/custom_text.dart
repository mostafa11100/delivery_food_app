import 'package:flutter/material.dart';
import 'package:teacher_app/const/text_style.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  CustomText({super.key, required this.text, this.styl});
  final String text;

  TextStyle? styl;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: styl ?? TextStyleconst.textstyle18,
    );
  }
}

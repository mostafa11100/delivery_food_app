import 'package:flutter/material.dart';
import 'package:teacher_app/utils/custom_feild_text.dart';
import 'package:teacher_app/utils/custom_text.dart';

class CustomFeild extends StatelessWidget {
  const CustomFeild(
      {super.key,
      required this.controller,
      required this.onpress,
      required this.text,
      this.hint});
  final TextEditingController controller;
  final String text;
  // ignore: prefer_typing_uninitialized_variables
  final hint;
  final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(alignment: Alignment.centerLeft, child: CustomText(text: text)),
        const SizedBox(
          height: 20,
        ),
        CustomTextFeild(text: hint, controller: controller, onpress: onpress)
      ],
    );
  }
}

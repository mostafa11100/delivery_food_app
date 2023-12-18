import 'package:flutter/material.dart';
import 'package:teacher_app/utils/column_textfeild.dart';
import 'package:teacher_app/utils/custom_button.dart';
import 'package:teacher_app/utils/row_button.dart';

// ignore: must_be_immutable
class LoginBody extends StatelessWidget {
  LoginBody({
    super.key,
  });
  TextEditingController? controller;
  String? text;
  // ignore: prefer_typing_uninitialized_variables

  @override
  Widget build(BuildContext context) {
    controller = TextEditingController();
    return Column(
      children: [
        CustomFeild(
          controller: controller!,
          onpress: () {},
          text: 'Email',
          hint: "Your Email",
        ),
        CustomFeild(
          controller: controller!,
          onpress: () {},
          text: 'Password',
          hint: "Your Password",
        ),
        const SizedBox(
          height: 40,
        ),
        CustomButton(onpress: () {}, text: "Sign in"),
        const SizedBox(
          height: 20,
        ),
        RowButton(
          text: "Sign Up",
          onpress: () {},
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key,
      required this.text,
      required this.controller,
      required this.onpress});

  // ignore: prefer_typing_uninitialized_variables
  final String text;
  final TextEditingController controller;
  final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          onEditingComplete: onpress,
          maxLines: 1,
          decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: text),
        ),
      ),
    );
  }
}

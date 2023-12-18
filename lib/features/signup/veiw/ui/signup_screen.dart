import 'package:flutter/material.dart';
import 'package:teacher_app/const/image_path.dart';
import 'package:teacher_app/features/login/veiw/ui/widget_login/textfeild_widget.dart';
import 'package:teacher_app/utils/column_textfeild.dart';
import 'package:teacher_app/utils/custom_button.dart';
import 'package:teacher_app/utils/row_button.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    controller = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                ImagePath.signupImage,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
              ),
              BodySignUp(
                controller: controller!,
                onpress: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BodySignUp extends StatelessWidget {
  const BodySignUp(
      {super.key, required this.controller, required this.onpress});
  final TextEditingController controller;
  final Function() onpress;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomFeild(
          controller: controller,
          onpress: onpress,
          text: 'Name',
          hint: "Your Name",
        ),
        const SizedBox(
          height: 10,
        ),
        CustomFeild(
          controller: controller,
          onpress: onpress,
          text: 'Email',
          hint: "Your Email",
        ),
        const SizedBox(
          height: 10,
        ),
        CustomFeild(
          controller: controller,
          onpress: onpress,
          text: 'Password',
          hint: "Your Password",
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          onpress: () {},
          text: 'Sign Up',
        ),
        const SizedBox(
          height: 10,
        ),
        RowButton(
          onpress: onpress,
          text: "Sign Ip",
        )
      ],
    );
  }
}

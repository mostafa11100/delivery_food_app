import 'package:flutter/material.dart';
import 'package:teacher_app/const/image_path.dart';
import 'package:teacher_app/features/login/veiw/ui/widget_login/textfeild_widget.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                ImagePath.girlImage,
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 3,
              ),
              LoginBody()
            ],
          ),
        ),
      ),
    );
  }
}

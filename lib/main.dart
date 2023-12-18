import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teacher_app/const/color_app.dart';
import 'package:teacher_app/features/login/veiw/ui/login_screen.dart';
import 'package:teacher_app/features/signup/veiw/ui/signup_screen.dart';
import 'package:teacher_app/features/splash_screen/ui/splash_screen.dart';

void main() {
  runApp(const TeacherApp());
}

class TeacherApp extends StatelessWidget {
  const TeacherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: ColorApp.appcolor),
      routerConfig: GoRouter(routes: [
        GoRoute(
            path: "/",
            builder: (BuildContext context, GoRouterState state) {
              return SignUpScreen();
            }),
      ]),
    );
  }
}

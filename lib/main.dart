import 'package:flutter/material.dart';
import 'package:flutter_login_signup/login.dart';
import 'package:flutter_login_signup/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Auth',
      home: const Login(),
      routes: {
        Login.routeName : (context) => const Login(),
        SignUp.routeName : (context) => const SignUp(),
      },
    );
  }
}

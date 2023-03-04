import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 32, vertical: double.infinity),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //logo
            SvgPicture.asset(
              'assets/images/pic.svg',
              height: 64,
            ),
            //text field input for email

            //text field input for password
            //button for login
            //transition to signup
          ],
        ),
      )),
    );
  }
}

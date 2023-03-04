import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
//import 'package:tot_gram/main.dart';
//import 'package:tot_gram/screens/homescreen.dart';
import 'package:tot_gram/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key, Key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: const Color.fromARGB(255, 234, 194, 87),
      centered: true,
      splash: 'assets/images/logo.png',
      splashIconSize: 400,
      nextScreen: const LoginScreen(),
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
    );
  }
}

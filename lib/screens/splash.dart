import 'package:flutter/material.dart';
import 'dart:async';

import 'package:sample_app/screens/main_screen.dart';

const int seconds = 1;

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: seconds),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MainPage())));
  }

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Center(
          child: Text("Splash Screen appears"),
        ),
      );
}

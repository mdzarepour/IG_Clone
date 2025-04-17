import 'package:flutter/material.dart';
import 'package:instagram/view/splash_screen.dart';

void main(List<String> args) {
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}

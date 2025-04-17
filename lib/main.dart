import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/view/splash_screen.dart';

void main(List<String> args) {
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: _getTextTheme()),
      home: SplashScreen(),
    );
  }

  TextTheme _getTextTheme() {
    return TextTheme(
      titleSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'GB',
        color: SolidColors.lightBlue,
      ),

      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'GB',
        color: SolidColors.grey,
      ),

      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'GB',
        color: SolidColors.white,
      ),

      headlineSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'GM',
        color: SolidColors.white,
      ),

      headlineMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'GM',
        color: SolidColors.pink,
      ),
      headlineLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: 'GB',
        color: SolidColors.white,
      ),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontFamily: 'GM',
        color: SolidColors.white,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'GB',
        color: SolidColors.white,
      ),
      labelLarge: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'SM',
        color: SolidColors.white,
      ),
      displaySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'GB',
        color: SolidColors.grey,
      ),
      displayMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'GM',
        color: SolidColors.grey,
      ),
      displayLarge: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontFamily: 'SM',
        color: SolidColors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        fontFamily: 'GB',
        color: SolidColors.white,
      ),
    );
  }
}

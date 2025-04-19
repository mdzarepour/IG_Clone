import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/view/splash_screen.dart';
import 'package:instagram/view/switch_account_screen.dart';

void main(List<String> args) {
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        textTheme: _getTextTheme(),
        inputDecorationTheme: _getInputTheme(),
        textButtonTheme: _getTextButtonTheme(),
      ),
      home: SwitchAccountScreen(),
    );
  }

  TextButtonThemeData _getTextButtonTheme() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: SolidColors.pink,
        fixedSize: Size(129, 46),
      ),
    );
  }

  InputDecorationTheme _getInputTheme() {
    return InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(width: 2, color: SolidColors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(width: 2, color: SolidColors.pink),
      ),

      labelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'GM',
        color: SolidColors.white,
      ),
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

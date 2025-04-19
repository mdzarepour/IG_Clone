import 'package:flutter/cupertino.dart';

class SolidColors {
  static const darkBlue = Color(0xff1C1F2E);
  static const pink = Color(0xffF35383);
  static const grey = Color(0xffC5C5C5);
  static const white = Color(0xffFFFFFF);
  static const purple = Color(0xff4E3CC9);
  static const lightBlue = Color(0xff55B9F7);
}

class GradientColors {
  static const LinearGradient registerBackGround = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF323A99), Color(0xFFF98BFC)],
  );
  static const LinearGradient frostedContainer = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(122, 255, 255, 255),
      Color.fromARGB(55, 255, 255, 255),
    ],
  );
}

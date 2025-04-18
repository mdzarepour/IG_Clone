import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/constants/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [_buildTopHalf(), _buildBottomHalf(size, textTheme)],
      ),
    );
  }

  Container _buildTopHalf() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment(14, -0.7),
          image: AssetImage('assets/images/register.png'),
        ),
        gradient: GradientColors.registerBackGround,
      ),
    );
  }

  Positioned _buildBottomHalf(Size size, TextTheme textThme) {
    return Positioned(
      bottom: 0,
      width: size.width,
      height: size.height / 2,
      child: Container(
        decoration: BoxDecoration(
          color: SolidColors.darkBlue,
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(style: textThme.headlineLarge, 'Sign in to'),
                Image.asset('assets/images/moodinger.png'),
              ],
            ),
            SizedBox(
              height: size.height / 10,
              width: size.width / 1.25,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

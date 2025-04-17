import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: SolidColors.darkBlue,
          image: DecorationImage(
            repeat: ImageRepeat.repeat,

            image: AssetImage('assets/images/splash_pattern.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SvgPicture.asset('assets/svg/logo.svg', height: 50),
            ),
            Column(
              children: [
                Text(style: textTheme.displaySmall, 'From'),
                Text(style: textTheme.titleSmall, 'ExpertFlutter'),
              ],
            ),
            SizedBox(height: 47),
          ],
        ),
      ),
    );
  }
}

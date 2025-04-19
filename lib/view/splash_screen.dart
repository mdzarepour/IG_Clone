import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/view/register_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(builder: (context) => RegisterScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
              child: SvgPicture.asset(
                'assets/svg/logo.svg',
                height:
                    MediaQuery.of(context).size.height *
                    0.083, // Responsive height
              ),
            ),
            Column(
              children: [
                Text('From', style: textTheme.displaySmall),
                Text('ExpertFlutter', style: textTheme.titleSmall),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.051),
          ],
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/constants/widgets/sign_up_widget.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: SolidColors.darkBlue,
      body: Container(
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Image.asset(
                    alignment: Alignment(0.0, -0.82),
                    'assets/images/switch.png',
                    width: 276,
                  ),
                ),
                SignUpWidget(),
                SizedBox(height: size.height / 11.8),
              ],
            ),
            _buildFrostedContainer(size, textTheme),
          ],
        ),
      ),
    );
  }

  _buildFrostedContainer(Size size, TextTheme textTheme) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 20.0),
          child: Container(
            width: size.width / 1.22,
            height: size.height / 2.62,
            decoration: BoxDecoration(
              gradient: GradientColors.frostedContainer,
            ),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.034), // Dynamic spacing
                Image.asset('assets/images/profile.png', height: 129),
                SizedBox(height: size.height * 0.022),
                Text('mdzarepour', style: textTheme.titleLarge),
                SizedBox(height: size.height * 0.021),
                TextButton(
                  onPressed: () {},
                  child: Text('Confirm', style: textTheme.titleLarge),
                ),
                SizedBox(height: size.height * 0.032),
                Text('switch account', style: textTheme.titleLarge),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

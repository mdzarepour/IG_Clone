import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();

  @override
  void initState() {
    super.initState();
    emailNode.addListener(() {
      setState(() {});
    });
    passwordNode.addListener(() {
      setState(() {});
    });
  }

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
            TextField(
              focusNode: emailNode,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                labelText: 'Password',
                labelStyle: TextStyle(
                  fontFamily: 'GM',
                  fontSize: 20,
                  color: emailNode.hasFocus ? Color(0xffF35383) : Colors.white,
                ),
              ),
            ),
            TextField(
              focusNode: passwordNode,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                labelText: 'Email',
                labelStyle: TextStyle(
                  fontFamily: 'GM',
                  fontSize: 20,
                  color:
                      passwordNode.hasFocus ? Color(0xffF35383) : Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(color: Color(0xffC5C5C5), width: 3.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(width: 3, color: Color(0xffF35383)),
                ),
              ),
            ),
          ],
        ),

        // SizedBox(
        //   height: size.height / 10,
        //   width: size.width / 1.25,
        //   child: TextField(
        //     decoration: InputDecoration(
        //       fillColor: Colors.grey,
        //       filled: true,
        //     ),
        //   ),
        // ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    emailNode.dispose();
    passwordNode.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _emailNode.addListener(() => setState(() {}));
    _passwordNode.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => [_emailNode.unfocus(), _passwordNode.unfocus()],
        child: Stack(children: [_buildTopHalf(), _buildBottomHalf()]),
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

  Positioned _buildBottomHalf() {
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
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
            Spacer(),
            _buildHeader(textTheme),
            SizedBox(height: size.height / 25.72),
            SizedBox(
              height: size.height / 20,
              width: size.width / 1.2,
              child: TextField(
                focusNode: _emailNode,
                style: textTheme.headlineSmall,
                cursorColor: SolidColors.white,
                keyboardType: TextInputType.emailAddress,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  labelStyle:
                      _emailNode.hasFocus
                          ? textTheme.headlineMedium
                          : textTheme.headlineSmall,
                  labelText: 'Email',
                ),
              ),
            ),
            SizedBox(height: size.height / 28.93),
            SizedBox(
              height: size.height / 20,
              width: size.width / 1.2,
              child: TextField(
                obscureText: true,
                focusNode: _passwordNode,
                style: textTheme.headlineSmall,
                cursorColor: SolidColors.white,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            SizedBox(height: size.height / 28.93),
            TextButton(
              onPressed: () {},
              child: Text(style: textTheme.titleLarge, 'Sign in'),
            ),
            SizedBox(height: size.height / 18.58),
            _buildSignUp(textTheme),
            SizedBox(height: size.height / 11.87),
          ],
        ),
      ),
    );
  }

  Row _buildSignUp(TextTheme textTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(style: textTheme.titleMedium, 'Don\'t have an account  / '),
        InkWell(
          onTap: () {},
          child: Text(style: textTheme.titleLarge, 'Sign up'),
        ),
      ],
    );
  }

  Row _buildHeader(TextTheme textThme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 5,
      children: [
        Text(style: textThme.headlineLarge, 'Sign in to'),
        Image.asset('assets/images/moodinger.png'),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emailNode.dispose();
    _passwordNode.dispose();
  }
}

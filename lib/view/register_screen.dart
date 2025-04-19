import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/constants/widgets/sign_up_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}
//TODO create form for obttom section screen --->

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
      height: MediaQuery.of(context).size.height * 0.5, // Responsive height
      child: Container(
        decoration: BoxDecoration(
          color: SolidColors.darkBlue,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
        ),
        child: Column(
          children: [
            const Spacer(),
            _buildHeader(textTheme),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.039,
            ), // Responsive spacing
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.83,
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.034),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.83,
              child: TextField(
                obscureText: true,
                focusNode: _passwordNode,
                style: textTheme.headlineSmall,
                cursorColor: SolidColors.white,
                keyboardType: TextInputType.emailAddress,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  labelStyle:
                      _passwordNode.hasFocus
                          ? textTheme.headlineMedium
                          : textTheme.headlineSmall,
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.034),
            TextButton(
              onPressed: () {},
              child: Text('Sign in', style: textTheme.titleLarge),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.054),
            SignUpWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.084),
          ],
        ),
      ),
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

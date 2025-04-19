import 'package:flutter/material.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
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
}

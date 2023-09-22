import 'package:dashboard_web/core/theme/theme.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function() onPressed;

  const LoginButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
        foregroundColor: textButton,
        backgroundColor: primaryColor,
        minimumSize: const Size(200, 60),
        fixedSize: const Size(400, 60),
      ),
      child: const Text('Entrar'),
    );
  }
}

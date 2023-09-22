import 'package:dashboard_web/core/theme/theme.dart';
import 'package:flutter/material.dart';

class InputTextLogin extends StatelessWidget {
  final String label;
  final String hint;
  const InputTextLogin({
    required this.label,
    required this.hint,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 12),
        TextFormField(
          // style: AppTheme.textStyles.input,
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: lightGray),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: boldGray),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}

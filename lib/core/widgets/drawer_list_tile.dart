// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dashboard_web/core/theme/theme.dart';

class DrawerListTile extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final IconData icon;
  final bool isActive;

  const DrawerListTile({
    Key? key,
    required this.onTap,
    required this.title,
    required this.icon,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      selectedColor: textButton,
      selected: isActive,
      textColor: lightGray,
      leading: Icon(icon),
      title: Text(title),
    );
  }
}

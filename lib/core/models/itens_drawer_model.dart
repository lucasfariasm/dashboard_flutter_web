import 'package:flutter/material.dart';

class ItensDrawerModel {
  final VoidCallback onTap;
  final String title;
  final IconData icon;

  ItensDrawerModel(
    this.onTap,
    this.title,
    this.icon,
  );
}

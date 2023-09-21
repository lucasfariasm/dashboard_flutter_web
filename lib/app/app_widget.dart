import 'package:dashboard_web/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routerConfig: Modular.routerConfig,
    ); //added by extension
  }
}

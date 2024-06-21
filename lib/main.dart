import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:narvepos/core/constants/colors.dart';
import 'package:narvepos/presentations/pages/splash_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Tiket App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        dialogTheme: const DialogTheme(elevation: 0),
        textTheme: GoogleFonts.outfitTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          color: AppColors.white,
          elevation: 0,
          titleTextStyle: GoogleFonts.outfit(
            color: AppColors.primary,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
          iconTheme: const IconThemeData(
            color: AppColors.primary,
          ),
          centerTitle: true,
        ),
      ),
      home: const SplashPages(),
    );
  }
}

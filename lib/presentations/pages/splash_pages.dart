import 'package:flutter/material.dart';
import 'package:narvepos/core/assets/assets.gen.dart';
import 'package:narvepos/core/components/spaces.dart';
import 'package:narvepos/core/constants/colors.dart';
import 'package:narvepos/presentations/pages/sign_in_pages.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const SignInPages(),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 230,
              child: Assets.images.logoNarve.image(),
            ),
            const SpaceHeight(15.0),
            const Text(
              'NARVE POS',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

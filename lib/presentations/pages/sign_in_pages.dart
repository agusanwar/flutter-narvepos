import 'package:flutter/material.dart';
import 'package:narvepos/core/assets/assets.gen.dart';
import 'package:narvepos/core/components/buttons.dart';
import 'package:narvepos/core/components/custom_text_field.dart';
import 'package:narvepos/core/components/spaces.dart';
import 'package:narvepos/core/constants/colors.dart';

class SignInPages extends StatefulWidget {
  const SignInPages({super.key});

  @override
  State<SignInPages> createState() => _SignInPagesState();
}

class _SignInPagesState extends State<SignInPages> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              bottom: 60,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100,
                  child: Assets.images.logoNarve.image(),
                ),
                const SpaceWidth(10.0),
                const Text(
                  'NARVE POS',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'Sign in and\naccess your finance',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.white,
            ),
            child: Column(
              children: [
                CustomTextField(
                  controller: emailController,
                  label: 'Email Address',
                ),
                const SpaceHeight(15.0),
                CustomTextField(
                  controller: passwordController,
                  label: 'Password',
                  obscureText: true,
                ),
                const SpaceHeight(15.0),
                Button.filled(
                  height: 50,
                  onPressed: () {},
                  label: 'Sign In',
                )
              ],
            ),
          ),
          const SpaceHeight(20.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
                child: Assets.images.logoNarve.image(),
              ),
              const SpaceWidth(7.0),
              const Text(
                'Created@Narve',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

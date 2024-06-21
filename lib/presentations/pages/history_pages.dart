import 'package:flutter/material.dart';
import 'package:narvepos/core/constants/colors.dart';

class HistoryPages extends StatelessWidget {
  const HistoryPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text('Hsstory')],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:job_finder/providers/onboarding_provider.dart';
import 'package:provider/provider.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 14,
      top: 10,
      child: TextButton(
        onPressed: () {
          context.read<OnBoardingProvider>().skipPage();
        },
        child: const Text(
          'Skip',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}

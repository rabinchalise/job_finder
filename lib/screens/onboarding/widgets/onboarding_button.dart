import 'package:flutter/material.dart';
import 'package:job_finder/providers/onboarding_provider.dart';
import 'package:provider/provider.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          context.read<OnBoardingProvider>().nextPage(context);
        },
        child: const Text('Next'),
      ),
    );
  }
}

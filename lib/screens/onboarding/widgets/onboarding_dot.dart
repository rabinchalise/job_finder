import 'package:flutter/material.dart';
import 'package:job_finder/providers/onboarding_provider.dart';
import 'package:job_finder/utils/colors.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigationDot extends StatelessWidget {
  const OnBoardingNavigationDot({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<OnBoardingProvider>();
    return SmoothPageIndicator(
      controller: controller.pageController,
      count: 3,
      onDotClicked: (index) => controller.updateDotIndicator(index),
      effect: ExpandingDotsEffect(
          dotColor: Colors.grey.shade300,
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: kPrimaryColor),
    );
  }
}

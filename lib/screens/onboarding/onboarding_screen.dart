import 'package:flutter/material.dart';
import 'package:job_finder/providers/onboarding_provider.dart';
import 'package:job_finder/screens/onboarding/widgets/onboarding_page.dart';
import 'package:job_finder/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<OnBoardingProvider>();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: (index) => controller.updatePageIndicator(index),
              children: const [
                OnBoardingPage(
                  imgUrl: 'assets/images/job_search.png',
                  title: 'Explore Your Ideal \nCareer Path',
                  subTitle:
                      'Finding your ideal career path is about creating a fulfilling and sustainable professional journey.',
                ),
                OnBoardingPage(
                  imgUrl: 'assets/images/growth.png',
                  title: 'We Provide Various \nJob Opportunities',
                  subTitle:
                      'Unlock your potential with our diverse array of job opportunities tailored to match your skills. ',
                ),
                OnBoardingPage(
                  imgUrl: 'assets/images/work.png',
                  title: 'Attain Your Ideal \nEmployment',
                  subTitle:
                      'Discover your perfect career fit with our tailored approach to matching candidates with their ideal employment opportunities.',
                ),
              ],
            ),
            const OnBoardingSkip(),
          ],
        ),
      ),
    );
  }
}

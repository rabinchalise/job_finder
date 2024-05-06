import 'package:flutter/material.dart';
import 'package:job_finder/screens/welcome/welcome_screen.dart';

class OnBoardingProvider extends ChangeNotifier {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  PageController get pageController => _pageController;

  void updatePageIndicator(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void updateDotIndicator(int index) {
    currentIndex = index;
    _pageController.jumpToPage(index);
    notifyListeners();
  }

  void nextPage(BuildContext context) {
    if (currentIndex == 2) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    } else {
      int page = currentIndex + 1;
      _pageController.jumpToPage(page);
    }

    notifyListeners();
  }

  void skipPage() {
    currentIndex = 2;
    _pageController.jumpToPage(currentIndex);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:job_finder/screens/onboarding/widgets/onboarding_button.dart';
import 'package:job_finder/screens/onboarding/widgets/onboarding_dot.dart';
import 'package:job_finder/utils/colors.dart';
import 'package:job_finder/utils/extension.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.subTitle});
  final String imgUrl;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context);
    var size = query.size;
    // var isPotrait = query.orientation == Orientation.portrait;
    return Padding(
      padding: const EdgeInsets.only(
          // top: isPotrait ? 60 : 10,
          top: 60,
          left: 20,
          right: 20,
          bottom: 30

          // bottom: isPotrait ? 30 : 5
          ),
      child: Column(
        children: [
          Container(
            decoration:
                const BoxDecoration(color: kSecondaryColor, shape: BoxShape.circle),
            child: Image.asset(
              imgUrl,
              fit: BoxFit.contain,
              height: size.height * 0.4,
              width: size.height * 0.4,
            ),
          ),
          // isPotrait ? 20.0.verticalSpacer : 10.0.verticalSpacer,
          20.0.verticalSpacer,
          Flexible(
            child: FittedBox(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          // isPotrait ? 20.0.verticalSpacer : 10.0.verticalSpacer,
          20.0.verticalSpacer,
          Flexible(
            child: Text(
              maxLines: 2,
              textAlign: TextAlign.center,
              subTitle,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          const Spacer(),
          const OnBoardingNavigationDot(),
          const Spacer(),
          const OnBoardingButton(),
        ],
      ),
    );
  }
}

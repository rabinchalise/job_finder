import 'package:flutter/material.dart';
import 'package:job_finder/screens/login/login_screen.dart';
import 'package:job_finder/utils/extension.dart';
import '../../utils/colors.dart';
import '../register/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context);
    var size = query.size;
    // var isPotrait = query.orientation == Orientation.portrait;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        // padding: EdgeInsets.only(
        //     top: isPotrait ? 20 : 6,
        //     left: 20,
        //     right: 20,
        //     bottom: isPotrait ? 20 : 6),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration:
                  const BoxDecoration(color: kSecondaryColor, shape: BoxShape.circle),
              child: Image.asset(
                'assets/images/sigin.png',
                fit: BoxFit.contain,
                height: size.height * 0.4,
                width: size.height * 0.4,
              ),
            ),
            20.0.verticalSpacer,
            // isPotrait ? 20.0.verticalSpacer : 8.0.verticalSpacer,
            const Flexible(
              child: FittedBox(
                child: Text(
                  'Experience Job Hunting\nMade Easy',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            20.0.verticalSpacer,
            // isPotrait ? 20.0.verticalSpacer : 0.0.verticalSpacer,
            const Expanded(
              child: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                'You can explore different kind of job and gain experience which will be helpful for your career. ',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            const Spacer(),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    child: const Text('Register'))),
            // isPotrait ? 16.0.verticalSpacer : 8.0.verticalSpacer,
            16.0.verticalSpacer,
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text('Log In'))),
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:job_finder/screens/password/forget_password_screen.dart';
import 'package:job_finder/utils/colors.dart';
import 'package:job_finder/utils/extension.dart';

import '../../home/home_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const TextField(
              cursorColor: kDarkerColor,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                label: Text('Email'),
              )),
          16.0.verticalSpacer,
          const TextField(
              cursorColor: kDarkerColor,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                label: Text('Password'),
              )),
          16.0.verticalSpacer,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Checkbox(
                        side:
                            const BorderSide(color: Colors.black54, width: 1.5),
                        activeColor: kPrimaryColor,
                        value: true,
                        onChanged: (value) {}),
                    const Flexible(
                      child: Text(
                        'Remember Me',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgetPasswordScreen()));
                },
                child: const Text(
                  'Forget Password',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: kPrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: kPrimaryColor),
                ),
              )
            ],
          ),
          20.0.verticalSpacer,
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: const Text('Log In'))),
        ],
      ),
    );
  }
}

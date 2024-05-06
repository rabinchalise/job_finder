import 'package:flutter/material.dart';
import 'package:job_finder/bottom_navigation_bar.dart';
import 'package:provider/provider.dart';
import 'providers/onboarding_provider.dart';
import 'utils/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoardingProvider())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Job Finder',
          theme: ThemeData(
            fontFamily: 'Roboto',
          ).copyWith(
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  scrolledUnderElevation: 0),
              elevatedButtonTheme: KAppTheme.elevatedButton,
              outlinedButtonTheme: KAppTheme.outlineButton,
              dropdownMenuTheme: KAppTheme.dropdownMenuTheme,
              inputDecorationTheme: KAppTheme.textField),
          home: const NavigationMenu()),
    );
  }
}

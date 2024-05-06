import 'package:flutter/material.dart';
import 'package:job_finder/utils/colors.dart';

class KAppTheme {
  static final OutlinedButtonThemeData outlineButton = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          backgroundColor: kSecondaryColor,
          foregroundColor: Colors.black,
          side: const BorderSide(color: kSecondaryColor),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w600)));

  static final ElevatedButtonThemeData elevatedButton = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: kPrimaryColor,
          foregroundColor: Colors.white,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(
            color: kPrimaryColor,
          ),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))));

  static InputDecorationTheme textField = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.black54,
      suffixIconColor: Colors.black54,
      fillColor: kSecondaryColor,
      prefixStyle: const TextStyle(fontSize: 16, color: Colors.black54),
      filled: true,
      labelStyle: const TextStyle(fontSize: 16, color: Colors.black),
      hintStyle: const TextStyle(fontSize: 16, color: Colors.black54),
      errorStyle: const TextStyle(fontStyle: FontStyle.normal),
      floatingLabelStyle: TextStyle(color: Colors.black.withOpacity(0.8)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: kSecondaryColor)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: kSecondaryColor)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: kSecondaryColor)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: Color(0xFFF57C00))),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 2, color: Color(0xFFF57C00))));

  static DropdownMenuThemeData dropdownMenuTheme = DropdownMenuThemeData(
    menuStyle: MenuStyle(
      elevation: const MaterialStatePropertyAll(0),
      backgroundColor: const MaterialStatePropertyAll(Colors.white),
      side: MaterialStatePropertyAll(BorderSide(color: Colors.grey.shade200)),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    ),
    textStyle: const TextStyle(fontSize: 16, color: Colors.black54),
    inputDecorationTheme: const InputDecorationTheme(
        fillColor: kSecondaryColor,
        filled: true,
        floatingLabelStyle: TextStyle(fontSize: 16, color: Colors.black),
        hintStyle: TextStyle(fontSize: 16, color: Colors.black54)),
  );
}

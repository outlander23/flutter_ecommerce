import 'package:ecommerce/utilities/colors.dart';
import 'package:ecommerce/utilities/common.components.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Rubic",
    // appBarTheme: appBarTheme(),
    // textTheme: textTheme(),
    primaryColor: Colors.purple,
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: Colors.purple),

      // floatingLabelBehavior: FloatingLabelBehavior.always,
      // contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      // enabledBorder: outlineInputBorder(),
      // focusedBorder: focusOutlineInputBorder(),
      // border: outlineInputBorder(),
      prefixIconColor: primaryColor,
      suffixIconColor: primaryColor,
      focusColor: secondaryColor);
}

// TextTheme textTheme() {
//   return const TextTheme(
//     bodyText1: TextStyle(color: primaryColor),
//     bodyText2: TextStyle(color: primaryColor),
//   );
// }

// AppBarTheme appBarTheme() {
//   return const AppBarTheme(
//     color: Colors.white,
//     elevation: 0,
//     brightness: Brightness.light,
//     iconTheme: IconThemeData(color: Colors.black),
//     textTheme: TextTheme(
//       headline6: TextStyle(color: secondaryColor, fontSize: 18),
//     ),
//   );
// }

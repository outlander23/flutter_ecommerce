import 'package:ecommerce/routes/routes.dart';
import 'package:ecommerce/screens/login.success.dart';
import 'package:ecommerce/screens/splash.screen.dart';
import 'package:ecommerce/utilities/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce',
      theme: theme(),
      // home: SplashScreen(),
      home: LoginSuccessScreen(),
      routes: routes,
    );
  }
}

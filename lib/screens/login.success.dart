import 'package:ecommerce/components/login.success.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginSuccessHelper(),
    );
  }
}

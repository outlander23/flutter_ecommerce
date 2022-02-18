import 'package:ecommerce/components/signup.form.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenWidth(12)),
                    child: Image.asset(
                      'assets/images/password.png',
                      height: getProportionateScreenHeight(100),
                      width: getProportionateScreenHeight(100),
                    ),
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Text(
                    "Sign in with your email and password",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  const SignUpForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     SocalCard(
                  //       icon: "assets/icons/google-icon.svg",
                  //       press: () {},
                  //     ),
                  //     SocalCard(
                  //       icon: "assets/icons/facebook-2.svg",
                  //       press: () {},
                  //     ),
                  //     SocalCard(
                  //       icon: "assets/icons/twitter.svg",
                  //       press: () {},
                  //     ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

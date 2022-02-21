import 'package:ecommerce/screens/home.screen.dart';
import 'package:ecommerce/screens/login.success.dart';
import 'package:ecommerce/screens/signup.screen.dart';
import 'package:ecommerce/utilities/colors.dart';
import 'package:ecommerce/utilities/common.components.dart';
import 'package:ecommerce/utilities/error.handeler.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({Key? key}) : super(key: key);

  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: true,
                activeColor: primaryColor,
                onChanged: (value) {},
              ),
              const Text("Remember me"),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(
                      decoration: TextDecoration.underline, fontSize: 14),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          PrimaryButton(
            text: "Login",
            press: () {
              Navigator.pushNamed(context, LoginSuccessScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

TextField buildPasswordFormField() {
  return TextField(
    decoration: InputDecoration(
      label: const Text("Enter Password"),
      hintText: "******",
      fillColor: Colors.white,
      border: outlineInputBorder(),
      focusedBorder: focusOutlineInputBorder(),
      prefixIcon: const Icon(Icons.lock),
      prefixIconColor: primaryColor,
      suffixIcon: const Icon(Icons.visibility),
    ),
  );
}

TextField buildEmailFormField() {
  return TextField(
    decoration: InputDecoration(
      label: const Text("Enter Email"),
      hintText: "abc@gmail.com",
      border: outlineInputBorder(),
      focusedBorder: focusOutlineInputBorder(),
      prefixIcon: const Icon(Icons.email),
      suffixIcon: const Icon(Icons.close),
      prefixIconColor: primaryColor,
    ),
  );
}

import 'package:ecommerce/utilities/colors.dart';
import 'package:ecommerce/utilities/common.components.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
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
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          PrimaryButton(
            text: "Login",
            press: () => {
              // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              // ignore: avoid_print
              print("Pressed button")
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
      border: outlineInputBorder(),
      focusedBorder: focusOutlineInputBorder(),
      prefixIcon: const Icon(Icons.lock),
      prefixIconColor: primaryColor,
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
      suffixIcon: Icon(Icons.close),
      prefixIconColor: primaryColor,
    ),
  );
}

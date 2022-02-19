import 'package:ecommerce/utilities/colors.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "ESHOP",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: primaryColor,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5),
        ),
        Spacer(),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              fontWeight: FontWeight.w700),
        ),
        const Spacer(flex: 2),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(300),
          width: getProportionateScreenWidth(300),
        ),
      ],
    );
  }
}

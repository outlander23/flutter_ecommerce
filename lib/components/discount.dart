import 'package:ecommerce/utilities/colors.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  final String text;
  final String offer;
  DiscountBanner({required this.text, required this.offer});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(20),
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    offer,
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(15),
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/discount.png"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

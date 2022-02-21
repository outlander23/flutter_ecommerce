import 'package:ecommerce/components/icon.button.counter.dart';
import 'package:ecommerce/components/search.dart';
import 'package:ecommerce/screens/login.screen.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            icon: Icon(Icons.shopping_cart),
            press: () => Navigator.pushNamed(context, LogInScreen.routeName),
          ),
          IconBtnWithCounter(
            icon: Icon(Icons.notifications),
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}

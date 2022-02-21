import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/components/catagories.dart';
import 'package:ecommerce/components/discount.dart';
import 'package:ecommerce/components/discount.parent.dart';
import 'package:ecommerce/components/header.homescreen.dart';
import 'package:ecommerce/components/products.parent.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            DiscountParent(),
            Categories(),
            PopularProducts()
          ],
        ),
      ),
    );
  }
}

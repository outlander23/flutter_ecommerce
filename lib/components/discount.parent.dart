import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/components/discount.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

class DiscountParent extends StatelessWidget {
  final List<Map<String, String>> discountScreenData = [
    {
      "text": "Online payment",
      "image": "https://download.logo.wine/logo/BKash/BKash-Icon-Logo.wine.png",
      "offer": "cashback 20%"
    },
    {
      "text": "Nagod payment",
      "image": "https://download.logo.wine/logo/BKash/BKash-Icon-Logo.wine.png",
      "offer": "cashback 10%"
    },
    {
      "text": "Bikas Payment",
      "image": "https://download.logo.wine/logo/BKash/BKash-Icon-Logo.wine.png",
      "offer": "cashback 40%"
    },
  ];

  DiscountParent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CarouselSlider.builder(
        itemCount: discountScreenData.length,
        itemBuilder: (context, index, realindex) {
          return DiscountBanner(
            text: discountScreenData[index]['text'].toString(),
            offer: discountScreenData[index]['offer'].toString(),
          );
        },
        options: CarouselOptions(
          enlargeCenterPage: true,
          height: getProportionateScreenHeight(250),
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          reverse: false,
          aspectRatio: 5.0,
        ),
      ),
    );
  }
}

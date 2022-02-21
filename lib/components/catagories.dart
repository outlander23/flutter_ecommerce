import 'package:ecommerce/utilities/colors.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": Icon(Icons.flash_auto), "text": "Flash Deal"},
      {"icon": Icon(Icons.phone_android), "text": "Mobile"},
      {"icon": Icon(Icons.laptop), "text": "Laptop"},
      {"icon": Icon(Icons.book), "text": "Book"},
      {"icon": Icon(Icons.extension), "text": "More"},
    ];
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);
  final Icon icon;
  final String? text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                bottom: getProportionateScreenWidth(5),
              ),
              height: getProportionateScreenWidth(35),
              width: getProportionateScreenWidth(35),
              decoration: BoxDecoration(
                // color: primaryColor,
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(100),
              ),
              child: icon,
            ),
            Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}

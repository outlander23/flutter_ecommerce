import 'package:ecommerce/models/product.model.dart';
import 'package:ecommerce/utilities/colors.dart';
import 'package:ecommerce/utilities/common.components.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

// class ProductCard extends StatelessWidget {
//   const ProductCard({
//     Key? key,
//     this.width = 140,
//     this.aspectRetio = 1.02,
//     required this.product,
//   }) : super(key: key);

//   final double width, aspectRetio;
//   final Product product;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
//       child: SizedBox(
//         width: getProportionateScreenWidth(width),
//         child: GestureDetector(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               AspectRatio(
//                 aspectRatio: 1.02,
//                 child: Container(
//                   padding: EdgeInsets.all(getProportionateScreenWidth(20)),
//                   decoration: BoxDecoration(
//                     color: secondaryColor.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Hero(
//                     tag: product.id.toString(),
//                     child: Image.asset(product.images),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 product.title,
//                 style: TextStyle(color: Colors.black),
//                 maxLines: 2,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "\$${product.price}",
//                     style: TextStyle(
//                       fontSize: getProportionateScreenWidth(18),
//                       fontWeight: FontWeight.w600,
//                       color: primaryColor,
//                     ),
//                   ),
//                   InkWell(
//                     borderRadius: BorderRadius.circular(50),
//                     onTap: () {},
//                     child: Container(
//                       padding: EdgeInsets.all(getProportionateScreenWidth(8)),
//                       height: getProportionateScreenWidth(28),
//                       width: getProportionateScreenWidth(28),
//                       decoration: BoxDecoration(
//                         color: product.isFavourite
//                             ? primaryColor.withOpacity(0.15)
//                             : secondaryColor.withOpacity(0.1),
//                         shape: BoxShape.circle,
//                       ),
//                       child: Icon(Icons.favorite),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class ProductCard2 extends StatefulWidget {
  @override
  _ProductCard2State createState() => _ProductCard2State();
}

class _ProductCard2State extends State<ProductCard2>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      margin: EdgeInsets.only(
          right: getProportionateScreenWidth(20),
          left: getProportionateScreenWidth(10)),
      child: Center(
        child: Container(
          height: 260,
          width: 150.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 10.0,
                ),
                height: getProportionateScreenHeight(150),
                width: getProportionateScreenWidth(150),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1521503862198-2ae9a997bbc9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=60'),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Flexible(
                        child: Text(
                          'One Best product',
                          style: TextStyle(fontSize: 10.0),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Flexible(
                                    child: Text('\$50'),
                                  ),
                                  Flexible(
                                    child: Row(
                                      children: [
                                        starIcon(primaryColor),
                                        starIcon(primaryColor),
                                        starIcon(primaryColor),
                                        starIcon(primaryColor),
                                        starIcon(secondaryColor),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Flexible(
                                child: Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Material(
                                    color: Colors.grey[200],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: InkWell(
                                      onTap: () {},
                                      child: const Center(
                                        child: Icon(
                                          Icons.favorite,
                                          size: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                            margin: EdgeInsets.only(bottom: 10.0),
                            width: 130.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: primaryColor,
                                  offset: Offset(0.0, 10.0),
                                  spreadRadius: -5.0,
                                  blurRadius: 10.0,
                                ),
                              ],
                            ),
                            child: PrimaryButton(
                              press: () {},
                              text: "Add to card",
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Icon starIcon(Color color) {
    return Icon(
      Icons.star,
      size: 10.0,
      color: color,
    );
  }
}

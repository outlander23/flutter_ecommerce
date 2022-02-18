import 'package:ecommerce/utilities/colors.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

final myInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      getProportionateScreenWidth(15),
    ),
    borderSide: const BorderSide(color: primaryColor),
  );
}

OutlineInputBorder focusOutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(getProportionateScreenWidth(15)),
    ),
    borderSide: const BorderSide(color: primaryColor),
  );
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(48),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: primaryColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(9),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

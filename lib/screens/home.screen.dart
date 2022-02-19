import 'package:ecommerce/components/home.body.dart';
import 'package:ecommerce/components/navbar.dart';
import 'package:ecommerce/utilities/nagivation.herlper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

import 'package:ecommerce/components/splash.components.dart';
import 'package:ecommerce/screens/login.screen.dart';
import 'package:ecommerce/screens/signup.screen.dart';
import 'package:ecommerce/utilities/common.components.dart';
import 'package:ecommerce/utilities/responsive.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "spalash_screen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;

  List<Map<String, String>> splashScreenData = [
    {
      "text": "Welcome to ESHOP, Let’s shop!",
      "image": "assets/images/ecommerce_01.png"
    },
    {
      "text": "We help people conect with store \naround Bangladesh ",
      "image": "assets/images/ecommerce_02.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/ecommerce_03.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  physics: BouncingScrollPhysics(),
                  itemCount: splashScreenData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SplashContent(
                      image: splashScreenData[index]["image"],
                      text: splashScreenData[index]['text'],
                    );
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashScreenData.length,
                          (index) => pagination(
                              index: index, currentPage: currentPage),
                        ),
                      ),
                      Spacer(flex: 3),
                      PrimaryButton(
                        text: "Let's Explore",
                        press: () {
                          Navigator.pushNamed(context, LogInScreen.routeName);
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

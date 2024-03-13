import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '//');
    });

    return SafeArea(
      child: Scaffold(
        body: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("img/Splash.png"))),
            child: Center(
              child: Image.asset(
                "img/loader.png",
                scale: 1.3,
              ),
            )),
      ),
    );
  }
}

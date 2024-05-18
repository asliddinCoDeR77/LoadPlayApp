import 'package:flutter/material.dart';
import 'package:loadpayapp/screen/introducescreen.dart';
import 'package:loadpayapp/utils/appimages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx) {
          return const IntroduceScreen();
        }),
      );
    });
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: 400,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              AppImage.loadpaylogo,
            ),
          )),
        )
      ],
    ));
  }
}

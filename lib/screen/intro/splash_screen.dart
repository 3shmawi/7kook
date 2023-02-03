
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hokok/screen/intro/on_boarding_screen.dart';
import 'package:hokok/unit/constant.dart';
import 'package:hokok/widget/shared_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4),
            () async{
              navOff(context: context,screen:OnBoardingScreen());
             }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.primaryColor,
      body: Center(
        child: Image.asset(ImageConstant.splashImage,
            fit: BoxFit.fill,),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hokok/unit/constant.dart';

import '../../unit/routes_manager.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.whiteColor,
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              Navigator.of(context).pushReplacementNamed(Routes.layoutRoute),
          child: Text('Go Layout Screen'),
        ),
      ),
    );
  }
}

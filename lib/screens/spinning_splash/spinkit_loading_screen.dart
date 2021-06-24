import 'dart:async';
import 'package:flutter/material.dart';

import 'package:fe_pay/screens/spinning_splash/splash_screen.dart';

class SpinKitLoadingScreen extends StatefulWidget {
  static const String id = 'SpinKitLoadingScreen';
  @override
  _SpinKitLoadingScreenState createState() => _SpinKitLoadingScreenState();
}

class _SpinKitLoadingScreenState extends State<SpinKitLoadingScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat();

    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, SplashScreen.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, child) {
            return Transform.rotate(
              angle: _controller.value * 2 * 3.1416,
              child: child,
            );
          },
          child: Image(
            height: 40,
            width: 40,
            image: AssetImage(
              'images/roat.png',
            ),
          ),
        ),
      ),
    );
  }
}

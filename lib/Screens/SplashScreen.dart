import 'package:flutter/material.dart';
import 'package:lifepoints/LifePointsMainLogo.dart';
import 'package:lifepoints/Screens/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        });
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              height: 300,
                width: 300,
                child: LifePointMainLogo()),
          ),
        ),
      ),
    );
  }
}

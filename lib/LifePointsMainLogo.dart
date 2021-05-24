import 'package:flutter/material.dart';
import 'package:lifepoints/Utilities.dart';

class LifePointMainLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Utilities.purple,width: 2),
          shape: BoxShape.circle,
          image: DecorationImage(
            scale: 1.5,
            image: AssetImage("images/life_points_logo.png")
          )
        ),

      ),
      Positioned(
          top: 20,
          right: 30,
          child: Image(
            image: AssetImage("images/life_points_logo.png"),
            height: 40,
            width: 40,
          ))
    ]);
  }
}

// margin: EdgeInsets.all(5),
// decoration: BoxDecoration(
// border: Border.all(color: Color(0XFF24244B), width: 2.0),
// shape: BoxShape.circle,
// image: DecorationImage(
// fit: BoxFit.scaleDown,
// image: AssetImage("images/life_points_logo.png"))),
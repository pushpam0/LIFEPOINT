import 'package:flutter/material.dart';
import 'package:lifepoints/Screens/SplashScreen.dart';
import 'package:lifepoints/Utilities.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        primaryColor: Utilities.darkBlue,
        scaffoldBackgroundColor: Utilities.darkBlue,
        fontFamily: 'Museo',
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 12),
          bodyText2: TextStyle(fontSize: 12),
        ).apply(
          bodyColor: Utilities.grey,
          displayColor: Colors.blue,
        ),
      ),
      home: SplashScreen(),
    );
  }
}




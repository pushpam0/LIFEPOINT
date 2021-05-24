import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Utilities{
  static Color sbway = new Color(0XFF00643C);
  static Color purple = new Color(0XFF24244B);
  static Color darkBlue = new Color(0xFF000002);
  static Color grey = new Color(0xffA7A7A7);
  static Color white = new Color(0xffFFFFFF);
  static Color darkPurple = new Color(0xff0D0D25F3);
  static Color accentPink = new Color(0xffD93069);
  static UnderlineInputBorder defaultUnderlineInputBorder = new UnderlineInputBorder(
    borderSide: BorderSide(color: Utilities.purple, width: 1),
  );

  static Widget defaultTextFormField({bool obscureText = false, String labelText}){
    return TextFormField(
      obscureText: obscureText,
      style: TextStyle(color: Utilities.white),
      onChanged: (value) {
        //Do something with the user input.
      },
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Utilities.grey,fontSize: 12),
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 10.0),
          border: Utilities.defaultUnderlineInputBorder,
          enabledBorder: Utilities.defaultUnderlineInputBorder,
          focusedBorder: Utilities.defaultUnderlineInputBorder,
          suffixIcon: Icon(
            Icons.check,
            size: 20,
            color: Utilities.white,
          )),
    );
  }
}
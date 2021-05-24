import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifepoints/Screens/CreateAccountScreen.dart';
import 'package:lifepoints/Screens/ForgotPasswordScreen.dart';
import 'package:lifepoints/Screens/HomeScreen.dart';
import 'package:lifepoints/Utilities.dart';
import '../LifePointsMainLogo.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets,
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(height: 250, width: 250, child: LifePointMainLogo()),
            Utilities.defaultTextFormField(obscureText: false,labelText: "EMAIL"),
            Utilities.defaultTextFormField(obscureText: true,labelText: "PASSWORD"),
            SizedBox(height:15 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPasswordScreen()));
                    },
                    child: Text(
                      "Forgot password ?",
                      style: TextStyle(color: Utilities.white),
                    ))
              ],
            ),
            Spacer(),


            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                gradient: LinearGradient(
                    colors: [new Color(0xff5098F2),new Color(0xff0F68D7)])
              ),
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },minWidth: double.infinity,
                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),

                child: Text("LOG IN",style: TextStyle(color: Colors.white),),
              ),
            ),
           SizedBox(height: 10,),
           MaterialButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccountScreen()));
           },
             child: Text("Don't have an account? Create one",style: TextStyle(color: Utilities.white,),),
           )




          ],
        ),
      ),
    );
  }
}

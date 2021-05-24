import 'package:flutter/material.dart';
import 'package:lifepoints/LifePointsMainLogo.dart';
import 'package:lifepoints/Screens/HomeScreen.dart';
import 'package:lifepoints/Screens/LoginScreen.dart';
import 'package:lifepoints/Utilities.dart';
class OTPVerificationScreen extends StatefulWidget {
  @override
  _OTPVerificationScreenState createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(

          margin: EdgeInsets.only(left: 40, right: 40, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                child: LifePointMainLogo(),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    padding: EdgeInsets.only(bottom: 15, right: 20),
                    constraints: BoxConstraints(),
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Verification",
                    style: TextStyle(color: Utilities.white, fontSize: 30),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "We have sent you a verification code to your email ID davidwalb@gmail.com",
                style: TextStyle(color: Utilities.grey, fontSize: 12,height: 1.5),
              ),
              Spacer(),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   OTPDigitTextFieldBox(first: true, last: false),
                   OTPDigitTextFieldBox(first: false, last: false),
                   OTPDigitTextFieldBox(first: false, last: false),
                   OTPDigitTextFieldBox(first: false, last: true)
                 ],
               ),
             ),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  "Didn't get a code? Tap to resend",
                  style: TextStyle(
                    color: Utilities.white,
                  ),
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(colors: [
                      new Color(0xff5098F2),
                      new Color(0xff0F68D7)
                    ])),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  minWidth: double.infinity,
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),

                  child: Text(
                    "VERIFY",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  "Have an account? Log in",
                  style: TextStyle(
                    color: Utilities.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OTPDigitTextFieldBox extends StatelessWidget {
  final bool first;
  final bool last;
  const OTPDigitTextFieldBox(
      {Key key, @required this.first, @required this.last})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      child: TextField(
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.length == 0 && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        readOnly: false,
        textAlign: TextAlign.center,
        style: TextStyle(color: Utilities.white,fontSize: 24),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          // contentPadding: EdgeInsets.all(0),
          counter: Offstage(),
          enabledBorder: Utilities.defaultUnderlineInputBorder,
          focusedBorder: Utilities.defaultUnderlineInputBorder,
          hintText: "*",
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifepoints/Screens/OTPVerificationScreen.dart';
import 'package:lifepoints/Utilities.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  Widget GenderWidget(
      String topText, IconData flatIcon, String bottomText, Color bgColor) {
    return Column(
      children: [
        Text(topText),
        SizedBox(
          height: 10,
        ),
        Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundColor: bgColor,
              child: IconButton(
                icon: Icon(
                  flatIcon,
                  color: Utilities.white,
                ),
              ),
            )),
        SizedBox(
          height: 10,
        ),
        Text(bottomText)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 40, right: 40, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(height: 30),
                  Text("PROFILE PICTURE "),
                  SizedBox(height: 10),
                  GestureDetector(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Utilities.purple, width: 2),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: Icon(
                        Icons.camera_alt_outlined,
                        color: Utilities.white,
                        size: 25,
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(),
                  Spacer(),
                  GenderWidget("GENDER", FlatIcons.user, "MALE",
                      CupertinoColors.activeBlue),
                  Spacer(),
                  GenderWidget(
                      "", FlatIcons.user_1, "FEMALE", new Color(0xff171732)),
                  Spacer(),
                  GenderWidget(
                      "", FlatIcons.user, "OTHER", new Color(0xff171732)),
                  Spacer(),
                  Icon(
                    Icons.check,
                    color: Utilities.white,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
              SizedBox(height: 20),
              Utilities.defaultTextFormField(
                  obscureText: false, labelText: "USERNAME"),
              Utilities.defaultTextFormField(
                  obscureText: false, labelText: "EMAIL"),
              Utilities.defaultTextFormField(
                  obscureText: true, labelText: "PASSWORD"),
              Utilities.defaultTextFormField(
                  obscureText: true, labelText: "CONFIRM PASSWORD"),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> OTPVerificationScreen()));
                  },
                  minWidth: double.infinity,
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),

                  child: Text(
                    "CREATE ACCOUNT",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              MaterialButton(
                onPressed: () {},
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

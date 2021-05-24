import 'package:flutter/material.dart';
import 'package:lifepoints/LifePointsMainLogo.dart';
import 'package:lifepoints/Utilities.dart';
class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 40,right: 40,bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: 180,
                child: LifePointMainLogo(),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    padding: EdgeInsets.only(bottom: 15,right: 20),
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
                    "Reset password ?",
                    style: TextStyle(color: Utilities.white, fontSize: 26),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "E-mail address verified! Set a new password",
                  style: TextStyle(color: Utilities.grey,fontSize: 12,),
                ),
              ),
              Spacer(),
             Utilities.defaultTextFormField(obscureText: true,labelText: "NEW PASSWORD"),
              Utilities.defaultTextFormField(obscureText: true,labelText: "RE-ENTER PASSWORD"),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(
                        colors: [new Color(0xff5098F2),new Color(0xff0F68D7)])
                ),
                child: MaterialButton(
                  onPressed: (){},minWidth: double.infinity,
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),

                  child: Text("RESET PASSWORD",style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(height: 5,),
              MaterialButton(onPressed: (){},
                child: Text("Have an account? Log in",style: TextStyle(color: Utilities.white,),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

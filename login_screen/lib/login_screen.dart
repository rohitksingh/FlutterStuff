
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/sign_up.dart';

class LoginScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Username",

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password"
              ),
            ),
          ),
          RaisedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
            },
            color: Colors.red[600],
            child: Text("Login Button"),
            textColor: Colors.white,
          ),
          Text("Don't have account? Sign up now"),

        ],
      ),
    );
  }



}
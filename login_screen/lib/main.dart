import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Scaffold(
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
          onPressed: (){},
          color: Colors.red[600],
          child: Text("Login Button"),
          textColor: Colors.white,
        ),
        Text("Don't have account? Sign up now"),

      ],
    ),
    ),
  ),

);


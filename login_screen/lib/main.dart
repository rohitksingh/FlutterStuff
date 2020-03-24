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
        TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Username"
          ),
        ),
        TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Password"
          ),
        ),
        RaisedButton(
          onPressed: (){},
          color: Colors.red[600],
          child: Text("Login Button"),
          textColor: Colors.white,
        ),

      ],
    ),
    ),
  ),

);


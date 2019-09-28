import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Scaffold(
    appBar: AppBar(
      title: Text(
        'This is Appbar',
      ),
      centerTitle: true,
      backgroundColor: Colors.green[400],
    ),
    body: Center(
      child: Text(
        'Hello Flutter',
        style: TextStyle(
          color: Colors.green,
          fontSize: 30.0,
          fontWeight: FontWeight.bold
        ),
      ),

    ),
    floatingActionButton: FloatingActionButton(
      child: Text('Click'),
      backgroundColor: Colors.green,
      onPressed: (){
        // some function
      },
    ),
  ),

));
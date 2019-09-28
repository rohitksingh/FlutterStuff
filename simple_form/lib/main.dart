import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: Scaffold(
    appBar: AppBar(
      title: Text('This is Appbar',
      ),
      centerTitle: true,
    ),
    body: Center(
      child: Text('Hello Flutter'),
    ),
    floatingActionButton: FloatingActionButton(
       child: Text('Click'),
    ),
  ),

));
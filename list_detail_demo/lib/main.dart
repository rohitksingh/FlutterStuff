import 'package:flutter/material.dart';
import 'list_screen.dart';

void main() => runApp(new ListApp());


class ListApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return new MaterialApp(

      title: "My List App",
      home: new StudentList(),

    );

  }

}

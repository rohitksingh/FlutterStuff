import 'package:flutter/material.dart';
import 'movie_detail_page.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(

      title: 'Movie-detail-page' ,
      home: new MovieList(),

    );
  }

}



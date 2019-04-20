import 'package:flutter/material.dart';
import 'movie_detail_page.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    debugPrint("Calling now");

    return new MaterialApp(

      title: 'Movie-detail-page' ,
      home: new MovieList(),

    );
  }

}



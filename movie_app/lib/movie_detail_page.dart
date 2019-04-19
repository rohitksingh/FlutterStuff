import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


class MovieList extends StatefulWidget{


  @override
  MovieListState createState() {

    return new MovieListState();

  }

}


class MovieListState extends State<MovieList>{

  var movies;
  Color mainColor = const Color(0xff3C3261);

  void getData() async {

    var data = await getJson();

    setState(() {
      movies = data['results'];
    });

  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      backgroundColor: Colors.white,
      appBar: new AppBar(
        elevation: 0.3,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: new Icon(
          Icons.arrow_back,
          color: mainColor,
        ),
        title: new Text(
          'Movies',
          style: new TextStyle(color: mainColor, fontFamily: 'Arvo', fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          new Icon(
            Icons.menu,
            color: mainColor,
          )
        ],
      ),
      body: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new MovieTitle(mainColor),
          ],
        ),



      ),

    );
  }


  Future<Map> getJson() async {

    var url = 'http://api.themoviedb.org/3/discover/movie?api_key={1e180262302e279996c7e928084a6c28}';
    http.Response response = await http.get(url);
    return json.decode(response.body);

  }


}


class MovieTitle extends StatelessWidget{

  final Color mainColor;
  MovieTitle(this.mainColor);
  
  @override
  Widget build(BuildContext context) {
    
    return new Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: new Text(
        'Top Rated',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: mainColor,
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Avro'
        ),
      ),

    );
    
    
    
  }


}
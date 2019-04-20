import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';


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

      debugPrint('Response $movies');

    });

  }


  @override
  Widget build(BuildContext context) {

    getData();

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

    var url = 'http://api.themoviedb.org/3/discover/movie?api_key=1e180262302e279996c7e928084a6c28';
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


class MovieCell extends StatelessWidget{
  
  final movies;
  final i;
  Color mainColor = const Color(0xff3C3261);
  var image_url = 'https://image.tmdb.org/t/p/w500/';

  MovieCell(this.movies, this.i);


  @override
  Widget build(BuildContext context) {

    return new Column(

      children: <Widget>[
        new Row(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(0.0),
              child: new Container(
                margin: const EdgeInsets.all(0.0),
                child: new Container(
                  margin: const EdgeInsets.all(0.0),
                  child: new Container(
                    width: 70.0,
                    height: 70.0,
                  ),
                ),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(10.0),
                  color: Colors.grey,
                  image: new DecorationImage(image: new NetworkImage(image_url+movies[i]),fit: BoxFit.cover),
                  boxShadow: [
                    new BoxShadow(
                      color: mainColor,
                      blurRadius: 5.0,
                      offset: new Offset(2.0,5.0)
                    )
                  ],
                ),
              ),

            )
          ],
        )

      ],

    );
  }



  
  
  
}

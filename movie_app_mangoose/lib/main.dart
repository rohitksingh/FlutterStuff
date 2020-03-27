import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("Movie Name"),
    ),
    body: ListView(
          children: <Widget>[
            headerSection,
            biographySectuon,
            informationSection,
            imageSection,
            castSection,
            crewSction
          ],
        ),
    ),
  ),
);

Widget headerSection = Container(
  child: Image.asset(
    'assets/movie_main.jpeg',
    width: 500,
    height: 200,
    fit: BoxFit.cover,
  )
);

Widget biographySectuon = Container(
  padding: EdgeInsets.all(16),
  child: Text('Lorem ipsum Lorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsuLorem ipsu',
    style: TextStyle(
      color: Colors.white,
    ),
  ),
  color: Colors.red[600],
);

Widget informationSection = Container(
  padding: EdgeInsets.all(16),
  child: Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Info', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
          Container(
            padding: EdgeInsets.all(6),
            color: Colors.red[600],
            child: Text(
                'EN',
              style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold, color: Colors.white),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Text('10 July 1994'),
          ),
          Expanded(
            child: Text('140 mins'),
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.black,
                child: Text('CRIME', style: TextStyle(color: Colors.white))
            ),
            Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.black,
                child: Text('DRAMA', style: TextStyle(color: Colors.white))
            ),
            Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.black,
                child: Text('FANTASY', style: TextStyle(color: Colors.white))
            ),

          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('https://www.batman.com', style: TextStyle(color: Colors.lightBlue),),
        ],
      )
    ],
  ),
);

Widget imageSection = new Column(
  children: <Widget>[
    Image.asset(
      'assets/movie_main.jpeg',
      width: 500,
      height: 200,
      fit: BoxFit.cover,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset(
          'assets/movie_main.jpeg',
          height: 100,
        ),
        Image.asset(
          'assets/movie_main.jpeg',
          height: 100,
        )
      ],
    )
  ],
);

Widget castSection = new Container();

Widget crewSction = new Container();







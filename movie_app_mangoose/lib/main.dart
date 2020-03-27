import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("Batman Begins"),
    ),
    body: ListView(
          children: <Widget>[
            headerSection,
            biographySectuon,
            informationSection,
            imageSection,
            new PeopleSection('Cast', 40),
            new PeopleSection('Crew', 111)
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
  child: Text('A young Bruce Wayne (Christian Bale) travels to the Far East, where he is trained in the martial arts by Henri Ducard (Liam Neeson), a member of the mysterious League of Shadows',
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
            child: Text('June 15, 2005'),
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

Widget imageSection = Stack(
  children: <Widget>[
     Column(
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
            Expanded(
              child: Image.asset(
                'assets/movie_main.jpeg',
                height: 100,
                fit: BoxFit.fitWidth,
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 1,
            ),
            Expanded(
                child:Image.asset(
                  'assets/movie_main.jpeg',
                  height: 100,
                  fit: BoxFit.fitWidth,
                )
            )
          ],
        )
      ],
    ),
    Positioned(
        left: 10,
        top: 10,
        child: Text('Images', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
    ),
    Positioned(
        right: 10,
        bottom: 10,
        child: Text('View More', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
    ),
  ],
);


class PeopleSection extends StatelessWidget{

  String sectionName;
  int numsToView = 1;

  PeopleSection(String sectionName, int numsToView){
    this.sectionName = sectionName;
    this.numsToView = numsToView;
  }

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                child: Text('$sectionName', style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                child: Text('$numsToView+', style: TextStyle(color: Colors.lightBlue),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: new People('assets/movie_main.jpeg', 'Christian Bale', 'Bruce Wayne'),
              ),
              Expanded(
                child: new People('assets/movie_main.jpeg', 'Christian Bale', 'Bruce Wayne'),
              ),
              Expanded(
                child: new People('assets/movie_main.jpeg', 'Christian Bale', 'Bruce Wayne'),
              )
            ],
          )
        ],
      ),
    );
  }

}

class People extends StatelessWidget{

  String imageUrl, name, characterName;

  People(String imageUrl, String name, String characterName){
    this.imageUrl = imageUrl;
    this.name = name;
    this.characterName = characterName;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        padding: EdgeInsets.all(8),
        child:Column(
          children: <Widget>[
            Image.asset(
              '$imageUrl',
              height: 140,
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  '$name',
                style: TextStyle(fontWeight: FontWeight.bold,),
              ),
            ),
            Text(
                '$characterName'
            )
          ],
        )
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: HomePage(),

));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'This is Appbar',
        ),
        centerTitle: true,
        backgroundColor: Colors.green[400],
      ),
      body: Row(

        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30),
              child: Text('1', style: TextStyle(fontFamily: 'Indie', fontSize: 20, color: Colors.white),),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
              padding: EdgeInsets.all(30),
              child:  Text('2', style: TextStyle(fontFamily: 'Indie', fontSize: 20, color: Colors.white),),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.pink,
              padding: EdgeInsets.all(30),
              child:  Text('3', style: TextStyle(fontFamily: 'Indie', fontSize: 20, color: Colors.white),),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        backgroundColor: Colors.green,
        onPressed: (){
          // some function
        },
      ),
    );
  }
}


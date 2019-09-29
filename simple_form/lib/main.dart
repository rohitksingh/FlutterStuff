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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Hello Text'),
          RaisedButton(
            onPressed: (){},
            color: Colors.green,
            child: Text('Mail me', style: TextStyle(color: Colors.white),),
            elevation: 40,
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            color: Colors.green,
            child: Text('Text with padding', style: TextStyle(color: Colors.white),),
          ),
//          Padding(
//            padding: EdgeInsets.all(20),
//            child: FlatButton(
//              textColor: Colors.white,
//              child: Text('Button with padding'),
//            ),
//          ),
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


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
      body: Container(
        color: Colors.amber,
        padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
        margin: EdgeInsets.all(20),
        child: Text('Hello Container', style: TextStyle(color: Colors.white),)
        ,
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


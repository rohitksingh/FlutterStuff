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
      body: Center(
        child: Icon(
          Icons.add_location,
          color: Colors.green,
          size: 40,
        ),

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


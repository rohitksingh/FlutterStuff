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
        child: Image(
          image: AssetImage(
            'assets/old_people.jpg'
          ),
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


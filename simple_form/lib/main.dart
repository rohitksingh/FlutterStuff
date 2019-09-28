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
        child: RaisedButton.icon(
            color: Colors.green,
            onPressed: (){print('Mail me');},
            icon: Icon(
              Icons.mail,
              color: Colors.white,
            ),
            label: Text(
              'Mail me',
              style: TextStyle(
                color: Colors.white,
              ),
            )),
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


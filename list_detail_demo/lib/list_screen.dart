import 'package:flutter/material.dart';

class StudentList extends StatefulWidget{

  @override
  StudentListState createState()
  {
    return new StudentListState();
  }

}

class StudentListState extends State<StudentList>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Student List')
      ),
      body: null,
    );
  }


}


/*
class StudentList extends StatefulWidget{

  @override
  StudentListState createState() {
    // TODO: implement createState
    return new StudentList();
  }

}


class StudentListState extends State<StudentList>{

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Student List',
        ),
      ),
      body: null,
    );
  }



}

*/
import 'package:flutter/material.dart';

String descriptionText ="Build the row containing these columns by calling the function and passing the color, Icon, and text specific to that column. Align the columns along the main axis using MainAxisAlignment.spaceEvenly to arrange the free space evenly before, between, and after each column. Add the following code just below the titleSection declaration inside the build() method:";

void main() => runApp(MaterialApp(
  title: "Building layout Demo",
  home: Scaffold(
    appBar: AppBar(title: Text("Building Layouut"),),
    body: Column(
      children: [
        Image.asset(
          'assets/lake.jpg',
          width: 600,
          height: 200,
          fit: BoxFit.cover,
        ),
        titleSection,
        buttonSection,
        descriptionSection,
      ],
    ),
  ),
));


Widget titleSection = Container(
  padding: EdgeInsets.all(16),
  color: Colors.amber,
  child: Row(
    children: [
      Expanded(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("This is the heading",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Text("This is description")
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.mail,
          color: Colors.red,
        ),
      ),
      Text('41')
    ],
  ),
);

Widget buttonSection = Container(
  padding: EdgeInsets.all(8),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      createButtonColumn(Icons.mail, "Mail"),
      createButtonColumn(Icons.print, "Print"),
      createButtonColumn(Icons.add, "Add")
    ],
  ),
);


Column createButtonColumn(IconData iconData, String iconName){

  return Column(
    children: [
      Icon(
        iconData,
        color: Colors.red,
      ),
      Text(iconName)
    ],
  );

}

Widget descriptionSection = Container(
  padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
  child: Text(
      descriptionText,
      softWrap: true,
  ),
);




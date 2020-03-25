import 'package:flutter/material.dart';

String descriptionText ="Build the row containing these columns by calling the function and passing the color, Icon, and text specific to that column. Align the columns along the main axis using MainAxisAlignment.spaceEvenly to arrange the free space evenly before, between, and after each column. Add the following code just below the titleSection declaration inside the build() method:";

void main() => runApp(MaterialApp(
  title: "Building layout Demo",
  home: Scaffold(
    appBar: AppBar(title: Text("Building Layouut"),),
    body: Column(
      children: [
        imageSection,
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
      FavoriteWidget()
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

Widget imageSection = Container(
  child: Image.asset(
    'assets/lake.jpg',
    width: 500,
    height: 200,
    fit: BoxFit.cover,
  ),
);



class FavoriteWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return FavoriteWidgetState();
  }

}


class FavoriteWidgetState extends State<FavoriteWidget>{

  bool isFavorite = true;
  int count = 41;

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: setFavorite,
            icon: IconButton(
              color: Colors.red,
              icon: (isFavorite ? Icon(Icons.star) : Icon(Icons.star_border)),
            ),
          ),
          Text('$count')
        ],
      ),
    );

  }

  void setFavorite(){
    setState(() {
      if(isFavorite){
        isFavorite = false;
        count = 40;
      }else{
        isFavorite = true;
        count = 41;
      }
    });
  }

}


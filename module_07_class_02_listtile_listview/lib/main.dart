import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  //#custom snakebar create

  mySnakeBar(context, masseage) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(masseage)));
  }

  //#custom jason data create
  var MyItems = [
    {'name': 'Hafiz', 'city': 'Pabna'},
    {'name': 'Sarah', 'city': 'New York'},
    {'name': 'Alex', 'city': 'London'},
    {'name': 'Maria', 'city': 'Paris'},
    {'name': 'John', 'city': 'Tokyo'},
    {'name': 'Emily', 'city': 'Sydney'},
    {'name': 'Carlos', 'city': 'Mexico City'},
    {'name': 'Anita', 'city': 'Cairo'},
    {'name': 'Ravi', 'city': 'Mumbai'},
    {'name': 'Elena', 'city': 'Moscow'}
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Color(0xf7f40606),
        elevation: 10,
        leading: Icon(
          Icons.settings_applications_sharp,
          size: 50,
          color: Colors.amberAccent,
        ),
        title: Text('List_tile List View'),
      ),

      //# dynamic listViewe start
      body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          //# warp with (Inkweel or GestureDetector) widget
          return GestureDetector(
            child: ListTile(
              leading: Icon(Icons.search_off_rounded),
              title: Text(MyItems[index]['name']!),
              subtitle: Text(MyItems[index]['city']!),
              //# anonymous function=> no function Name here
              onTap: () {
                //mySnakeBar(context, MyItems[index]['age']);
                mySnakeBar(
                    context,
                    "Age=" +
                        MyItems[index]['age']! +
                        "City=" +
                        MyItems[index]['city']!);
              },
            ),
          );
        },
      ),

      //# Static listViewe start
      // body: ListView(children: [
      //   ListTile(
      //     leading: Icon(Icons.search),
      //     title: Text('Item 01'),
      //     onTap: () {
      //       mySnakeBar(context, 'Item 01');
      //     },
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.search),
      //     title: Text('Item 02'),
      //     onTap: () {
      //       mySnakeBar(context, 'Item 02');
      //     },
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.search),
      //     title: Text('Item 03'),
      //     onTap: () {
      //       mySnakeBar(context, 'Item 02');
      //     },
      //   ),
      // ]),
    );
  }
}

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

  myCustomSnakebar(context, msg) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 20,
        leading: Icon(
          Icons.settings_applications_sharp,
          size: 50,
          color: Colors.amberAccent,
        ),
        title: Text('List_tile List View'),
      ),
      body: ListView(children: [
        ListTile(
          leading: Icon(Icons.search),
          title: Text('Item 01'),
          onTap: () {
            myCustomSnakebar(context, 'Item 01');
          },
        ),
        ListTile(
          leading: Icon(Icons.search),
          title: Text('Item 02'),
          onTap: () {
            myCustomSnakebar(context, 'Item 02');
          },
        ),
        ListTile(
          leading: Icon(Icons.search),
          title: Text('Item 03'),
          onTap: () {
            myCustomSnakebar(context, 'Item 02');
          },
        ),
      ]),
    );
  }
}

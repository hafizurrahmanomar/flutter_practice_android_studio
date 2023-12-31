import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // Custom SnackBar method
  void mySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi-task App"),
        titleSpacing: 0,
        elevation: 7.0,
        backgroundColor: Colors.blue,
        toolbarHeight: 100.0,
        leading: Icon(
          Icons.home,
          size: 45.0,
          color: Colors.purpleAccent,
        ),
        actions: [
          IconButton(
            onPressed: () {
              widget.mySnackBar('This is Email Option', context);
            },
            icon: Icon(Icons.email),
            style: ButtonStyle(mouseCursor: MaterialStateMouseCursor.clickable),
            color: Colors.purpleAccent,
          ),
          IconButton(
            onPressed: () {
              widget.mySnackBar('This is Search Option', context);
            },
            icon: Icon(Icons.search),
            style: ButtonStyle(mouseCursor: MaterialStateMouseCursor.clickable),
            color: Colors.purpleAccent,
          ),
          IconButton(
            onPressed: () {
              widget.mySnackBar('This is Share Option', context);
            },
            icon: Icon(Icons.share),
            style: ButtonStyle(mouseCursor: MaterialStateMouseCursor.clickable),
            color: Colors.purpleAccent,
          ),
          IconButton(
            onPressed: () {
              widget.mySnackBar('This is Setting Option', context);
            },
            icon: Icon(Icons.settings),
            style: ButtonStyle(mouseCursor: MaterialStateMouseCursor.clickable),
            color: Colors.purpleAccent,
          ),
        ],
      ),
    );
  }
}

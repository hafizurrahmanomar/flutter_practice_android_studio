import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //code here
    return MaterialApp(
      title: 'My First App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement code here to build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 5, //for shadow
        leading: Icon(
          Icons.home,
          color: Colors.pinkAccent.shade700,
          size: 45,
        ),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.pink),
        ),
      ),
      //backgroundColor: Colors.amber,
      backgroundColor: Color(0xFF4949D8),
      body: Center(
        child: Text(
          'Alhamdulillah, My Flutter App run sucessfully.Tahnk you app web developer youtube channel'
              .toUpperCase(),
          //textAlign: TextAlign.justify,
          textAlign: TextAlign.center,
          maxLines: 2,
          style: TextStyle(
            //color: Colors.pink,
            color: Color(0xFFffffff),
            //backgroundColor: Colors.amber,
            fontSize: 35,
            fontWeight: FontWeight.w700,
            wordSpacing: 5,
            letterSpacing: 3,
            //decoration:TextDecoration.overline,
            //decoration: TextDecoration.lineThrough,
            decoration: TextDecoration.underline,
            //decorationThickness:BorderSide.strokeAlignCenter,
            decorationColor: Color(0xFFff2def),
            decorationStyle: TextDecorationStyle.dotted,
            //overflow: TextOverflow.visible,
            //overflow: TextOverflow.clip,
            //overflow: TextOverflow.fade,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

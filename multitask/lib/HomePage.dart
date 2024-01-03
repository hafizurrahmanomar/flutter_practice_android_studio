import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi-task App"),
        titleSpacing: 0,
        elevation: 7.0,
        backgroundColor: Colors.blue,
        toolbarHeight: 100.0,
        leading: const Icon(
          Icons.home,
          size: 45.0,
          color: Colors.purpleAccent,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.red,
        elevation: 10,
        iconSize: 30.0,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page), label: "contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int currentIndex) {
          if (currentIndex == 0) {
            print('Home');
          }
          if (currentIndex == 1) {
            print('Contact');
          }
          if (currentIndex == 2) {
            print('Profile');
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ExpandedPractice extends StatefulWidget {
  const ExpandedPractice({super.key, required String title});

  @override
  State<ExpandedPractice> createState() => _ExpandedPracticeState();
}

class _ExpandedPracticeState extends State<ExpandedPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget Practice'),
      ),
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            color: Colors.blueGrey,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.black,
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.amber,
                          ),
                          flex: 3,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.white,
                          ),
                          flex: 2,
                        ),
                      ],
                    ),
                    color: Colors.brown,
                  ),
                  flex: 3,
                ),
              ],
            ),
            color: Colors.lightGreen,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xfff1eae9),
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            color: Colors.red,
          ),
        ),
      ]),
    );
  }
}

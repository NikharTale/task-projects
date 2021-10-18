import 'package:flutter/material.dart';

class QuoteApp extends StatefulWidget {
  const QuoteApp({Key? key}) : super(key: key);

  @override
  _QuoteAppState createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  List names = ["nikhar", "mukesh", "rajesh", "prakash", "rahul"];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 250,
              width: 250,
              margin: const EdgeInsets.all(10),
              child: Center(
                child: Text(
                  names[_index % names.length],
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _index++;
                  });
                },
                icon: const Icon(Icons.person),
                label: const Text("Names")),
          ),
          const Spacer()
        ],
      ),
    );
  }

  // void _showNames() {
  //   setState(() {
  //     // print("button pressed");
  //     _index++;
  //   });
  // }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'api_jproject/api_project_json.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joke App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightBlue[800],
          textTheme: const TextTheme(
              bodyText1: TextStyle(fontSize: 65, color: Colors.black))
          //primarySwatch: Colors.blue,
          ),
      home: const ApiProject(),
    );
  }
}

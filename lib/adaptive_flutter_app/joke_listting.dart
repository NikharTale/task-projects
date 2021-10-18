import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model_class.dart';

class JokeLiting extends StatelessWidget {
  final ValueChanged<Joke> jokeSelectedCallback;
  final Joke JokeSelected;

  JokeLiting({required this.JokeSelected, required this.jokeSelectedCallback});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: jokesList.map((joke) {
      return Container(
        child: ListTile(
          title: Text(joke.setup),
          onTap: () => jokeSelectedCallback(joke),
          selected: JokeSelected == joke,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(50.0),
        ),
      );
    }).toList());
  }
}

class JokeDetails extends StatelessWidget {
  JokeDetails({required this.isIntabletLayout, required this.joke});
  final bool isIntabletLayout;
  final Joke joke;
  @override
  Widget build(BuildContext context) {
    //  TextTheme textTheme = Theme.of(context).textTheme;
    final Widget context = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //   Text(joke.setup, style: TextTheme., ),
      ],
    );
    return Container();
  }
}

class Joke {
  Joke(
      {required this.id,
      required this.punchLine,
      required this.setup,
      required this.type});
  final int id;
  final String type;
  final String setup;
  final String punchLine;
}

final List<Joke> jokesList = <Joke>[
  Joke(
      id: 1,
      punchLine: "damn",
      setup: "how do you make a tissue dance",
      type: "general"),
  Joke(
      id: 2,
      punchLine: "damn",
      setup: "how do you make a tissue dance",
      type: "general"),
  Joke(
      id: 3,
      punchLine: "ggg",
      setup: "wwww do you make a tissue dance",
      type: "general"),
  Joke(
      id: 4,
      punchLine: "damn",
      setup: "tjil do you make a tissue dance",
      type: "general"),
];

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'movie_model_class.dart';

class MovieListView extends StatelessWidget {
  const MovieListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Movie> movieModelList = Movie.getMovies();
    // List movies = [
    //   "Avatar",
    //   "I Am Legend",
    //   "300",
    //   "The Avengers",
    //   "The Wolf of Wall Street",
    // ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
        backgroundColor: Colors.grey.shade900,
      ),
      backgroundColor: Colors.grey.shade900,
      body: ListView.builder(
          itemCount: movieModelList.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MovieDetails(
                              movieName: movieModelList[index].title,
                              movie: movieModelList[index],
                            )));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 120.0,
                child: Stack(children: [
                  Container(
                    margin: const EdgeInsets.only(left: 50),
                    child: Card(
                      elevation: 4.5,
                      color: Colors.black,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, left: 60.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        movieModelList[index].title,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Text(
                                      "Rating :${movieModelList[index].rated}/10",
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Released : ${movieModelList[index].year}",
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    )
                                  ],
                                )
                              ])),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                movieModelList[index].poster,
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ]),

                //   child: ListTile(
                //     title: Text(movieModelList[index].title),
                //     trailing: Text(movieModelList[index].rated),
                //     subtitle: Text(movieModelList[index].year),
                //     leading: CircleAvatar(
                //       child: Container(
                //         height: 200,
                //         width: 200,
                //         decoration: BoxDecoration(
                //             image: DecorationImage(
                //                 image: NetworkImage(movieModelList[index].poster),
                //                 fit: BoxFit.cover)),
                //       ),
                //     ),
                //     // onTap: () {
                //     //   print(movies[index]);
                //     // },
                //     onTap: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => MovieDetails(
                //                     movieName: movieModelList[index].title,
                //                     movie: movieModelList[index],
                //                   )));
                //     },
                //   ),
                // ),
              ),
            );
          }),
    );
  }
}

// new Route(new screen)
class MovieDetails extends StatelessWidget {
  final String movieName;
  final Movie movie;

  const MovieDetails({Key? key, required this.movieName, required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("More About $movieName Movie"),
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: [
          MovieDetailsThumnail(
            thumnail: movie.poster,
          ),
          SizedBox(height: 100, child: Center(child: Text(movie.langauage))),
          SizedBox(height: 100, child: Center(child: Text(movie.country))),
          SizedBox(height: 100, child: Center(child: Text(movie.rated)))
        ],
      ),
      // body: Column(children: [
      //   Text(movie.langauage),
      //   Center(
      //       child: ElevatedButton(
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //           child: const Text("back"))),
      // ]),
    );
  }
}

class MovieDetailsThumnail extends StatelessWidget {
  final String thumnail;
  const MovieDetailsThumnail({Key? key, required this.thumnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(thumnail), fit: BoxFit.cover),
                ))
          ],
        ),
        // Container(
        //   decoration: const BoxDecoration(
        //       gradient: LinearGradient(colors: [
        //     Colors.white,
        //   ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        //   height: 50,
        // )
      ],
    );
  }
}

class MovieWithPoster extends StatelessWidget {
  const MovieWithPoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

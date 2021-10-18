class Movie {
  String title;
  String year;
  String rated;
  String langauage;
  String country;
  String poster;

  Movie(this.title, this.year, this.country, this.langauage, this.rated,
      this.poster);
  static List<Movie> getMovies() => [
        Movie("Interstellar", "2014", "USA", "English", "8.6",
            "https://www.themoviedb.org/t/p/w220_and_h330_face/9W49fy5G7v9Ed3CXtvMi41YqZtt.jpg"),
        Movie("300", "2002", "USA", "hindi", "4.6",
            "https://www.themoviedb.org/t/p/w220_and_h330_face/9W49fy5G7v9Ed3CXtvMi41YqZtt.jpg"),
        Movie("Batman", "2010", "USA", "English", "5.6",
            "https://www.themoviedb.org/t/p/w220_and_h330_face/9W49fy5G7v9Ed3CXtvMi41YqZtt.jpg"),
        Movie("Ironman", "2015", "USA", "English", "4.6",
            "https://www.themoviedb.org/t/p/w220_and_h330_face/9W49fy5G7v9Ed3CXtvMi41YqZtt.jpg"),
      ];
}

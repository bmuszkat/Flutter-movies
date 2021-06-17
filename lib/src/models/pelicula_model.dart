class Peliculas {
  List<Pelicula> items = new List();

  Peliculas();

  Peliculas.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final pelicula = new Pelicula.fromJsonMap(item);

      items.add(pelicula);
    }
  }
}

class Pelicula {
  String uniqueId;

  List<int> genreIds;
  String originalLanguage;
  String originalTitle;
  String posterPath;
  String title;
  bool video;
  double voteAverage;
  double popularity;
  int voteCount;
  String releaseDate;
  String overview;
  bool adult;
  String backdropPath;
  int id;

  Pelicula({
    this.genreIds,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.title,
    this.video,
    this.voteAverage,
    this.popularity,
    this.voteCount,
    this.releaseDate,
    this.overview,
    this.adult,
    this.backdropPath,
    this.id,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    genreIds = json['genre_ids'].cast<int>();
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    posterPath = json['poster_path'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'] / 1;
    popularity = json['popularity'] / 1;
    voteCount = json['vote_count'];
    releaseDate = json['release_date'];
    overview = json['overview'];
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
  }

  getPosterImg() {
    if (posterPath == null)
      return 'https://vcunited.club/wp-content/uploads/2020/01/No-image-available-2.jpg';
    else
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
  }

  getBackgroundImg() {
    if (posterPath == null)
      return 'https://vcunited.club/wp-content/uploads/2020/01/No-image-available-2.jpg';
    else
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
  }
}

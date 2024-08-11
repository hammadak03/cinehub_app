// import 'dart:convert';

// import 'package:cinehub_app/viewmodels/movie_list_model.dart';
// import 'package:http/http.dart' as http;

// class MovieApiService {
//   Future<List<MovieListModel>> fetchMovies() async {
//     final url = Uri.parse('https://api.themoviedb.org/3/discover/movie');
//     final response = await http.get(
//       url,
//       headers: {
//         'Authorization':
//             'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwMDM0MWMxMTM0NzU4ZDQ1Y2EzNTJlOWUxYTdlZGIxYSIsIm5iZiI6MTcyMzIyMjE2MC40MDAyNzUsInN1YiI6IjY2YjM2MDYyNjhiNWU3OTliNTc3MWNlYyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jX1OtD-tkLUfK4OcqBgF8dGZG9nReRXzxsVAvKTvQ7g'
//       },
//     );

//     if (response.statusCode == 200) {
//       final List<dynamic> data = json.decode(response.body);
//       return data.map((json) => MovieListModel.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load movies');
//     }
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'movie_model.dart';
import 'package:http/http.dart' as http;

class MovieViewModel extends ChangeNotifier {
  List<Results> _movies = [];
  List<Results> _filteredMovies = [];
  bool _loading = false;

  List<Results> get movies =>
      _filteredMovies.isEmpty ? _movies : _filteredMovies;
  bool get loading => _loading;

  Future<void> fetchMovies() async {
    _loading = true;
    notifyListeners();

    final url = Uri.parse('https://api.themoviedb.org/3/discover/movie');
    final response = await http.get(
      url,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwMDM0MWMxMTM0NzU4ZDQ1Y2EzNTJlOWUxYTdlZGIxYSIsIm5iZiI6MTcyMzIyMjE2MC40MDAyNzUsInN1YiI6IjY2YjM2MDYyNjhiNWU3OTliNTc3MWNlYyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jX1OtD-tkLUfK4OcqBgF8dGZG9nReRXzxsVAvKTvQ7g',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['results'] != null && data['results'] is List) {
        _movies = (data['results'] as List).map((movieData) {
          return Results.fromJson(movieData);
        }).toList();
        _filteredMovies = _movies;
      }
    } else {
      _movies = [];
    }

    _loading = false;
    notifyListeners();
  }

  void searchMovies(String query) {
    if (query.isEmpty) {
      _filteredMovies = _movies;
    } else {
      _filteredMovies = _movies.where((movie) {
        final titleLower = movie.title?.toLowerCase() ?? '';
        final queryLower = query.toLowerCase();
        return titleLower.contains(queryLower);
      }).toList();
    }
    notifyListeners();
  }
}

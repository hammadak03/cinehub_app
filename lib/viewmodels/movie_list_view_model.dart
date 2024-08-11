// import 'package:cinehub_app/viewmodels/movie_list_model.dart';
// import 'package:flutter/material.dart';

// import '../services/moive_api_service.dart';

// class MovieListViewModel extends ChangeNotifier {
//   List<MovieListModel> movieList = [];
//   bool isLoading = true;
//   String errorMessage = '';

//   MovieListViewModel() {
//     fetchMovies();
//   }

//   Future<void> fetchMovies() async {
//     try {
//       movieList =
//           await MovieApiService().fetchMovies(); // Replace with your API call
//       isLoading = false;
//       notifyListeners();
//     } catch (error) {
//       isLoading = false;
//       errorMessage = error.toString();
//       notifyListeners();
//     }
//   }
// }

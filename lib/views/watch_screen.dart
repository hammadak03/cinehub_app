import 'dart:convert';
import 'package:cinehub_app/viewmodels/movie_list_model.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/custom_text_widget.dart';
import '../widgets/movie_card_widget.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class WatchScreen extends StatelessWidget {
  List<MovieListModel> movieList = [];

  Future<List<Results>> fetchMovies() async {
    final url = Uri.parse('https://api.themoviedb.org/3/discover/movie');
    final response = await http.get(
      url,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwMDM0MWMxMTM0NzU4ZDQ1Y2EzNTJlOWUxYTdlZGIxYSIsIm5iZiI6MTcyMzIyMjE2MC40MDAyNzUsInN1YiI6IjY2YjM2MDYyNjhiNWU3OTliNTc3MWNlYyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jX1OtD-tkLUfK4OcqBgF8dGZG9nReRXzxsVAvKTvQ7g'
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['results'] != null && data['results'] is List) {
        return (data['results'] as List).map((movieData) {
          return Results.fromJson(movieData);
        }).toList();
      }
    }
    return []; // Return an empty list in case of an error
  }

  WatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          text: 'Watch',
          fontColor: darkPurple,
          fontSize: 20,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: FutureBuilder(
        future: fetchMovies(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            final movies = snapshot.data as List<Results>;
            return ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return MovieCard(movie: movies[index]);
              },
            );
          }
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 10, left: 4, right: 4),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(27),
            topRight: Radius.circular(27),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: darkPurple,
            selectedItemColor: whiteColor,
            unselectedItemColor: warmGrey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: 1,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_outline),
                label: 'Watch',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_library),
                label: 'Media Library',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: 'More',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

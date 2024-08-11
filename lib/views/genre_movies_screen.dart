import 'package:flutter/material.dart';

class GenreMoviesScreen extends StatelessWidget {
  final int genreId;
  final String genreName;

  const GenreMoviesScreen({
    required this.genreId,
    required this.genreName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Fetch movies based on the genreId
    // For now, this is a placeholder screen.
    return Scaffold(
      appBar: AppBar(
        title: Text('$genreName Movies'),
      ),
      body: Center(
        child: Text(
          'Displaying movies for the genre: $genreName',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

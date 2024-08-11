import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/movie_view_model.dart';
import 'views/watch_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MovieViewModel()..fetchMovies()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WatchScreen(),
    );
  }
}

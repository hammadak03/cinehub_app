import 'package:cinehub_app/viewmodels/movie_view_model.dart';
import 'package:cinehub_app/views/details_screen.dart';
import 'package:cinehub_app/widgets/custom_bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/colors.dart';
import '../widgets/custom_text_widget.dart';
import '../widgets/movie_card_widget.dart';

class WatchScreen extends StatelessWidget {
  final int? genreId;
  final String? genreName;

  const WatchScreen({Key? key, this.genreId, this.genreName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movieViewModel = context.watch<MovieViewModel>();

    // Filter movies by genre if genreId is provided
    final movies = genreId == null
        ? movieViewModel.movies
        : movieViewModel.movies
            .where((movie) => movie.genreIds!.contains(genreId))
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          text: genreName ?? 'Watch',
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
      body: movieViewModel.loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(movie: movies[index]),
                      ),
                    );
                  },
                  child: MovieCard(movie: movies[index]),
                );
              },
            ),
      bottomNavigationBar: CustomBottomNavigationBarWidget(
        currentIndex: 1,
      ),
    );
  }
}

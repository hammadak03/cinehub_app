import 'package:cinehub_app/views/search_screen.dart'; // Import the SearchScreen
import 'package:flutter/material.dart';
import '../utils/genre_ids.dart';
import '../widgets/category_card_widget.dart';
import '../widgets/custom_bottom_navigation_bar_widget.dart';
import 'watch_screen.dart';

class GenreSelectionScreen extends StatelessWidget {
  const GenreSelectionScreen({super.key});

  void _onGenreSelected(BuildContext context, int genreId, String genreName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WatchScreen(
          genreId: genreId,
          genreName: genreName,
        ),
      ),
    );
  }

  void _openSearchScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SearchScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            decoration: const InputDecoration(
              hintText: 'TV shows, movies and more',
              hintStyle: TextStyle(
                  color: Color.fromARGB(100, 32, 33, 67),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              prefixIcon: Icon(
                Icons.search,
                size: 25,
              ),
              suffixIcon: Icon(
                Icons.close,
              ),
              border: InputBorder.none,
            ),
            onTap: () {
              _openSearchScreen(context); // Navigate to SearchScreen
            },
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16, right: 8, bottom: 0, left: 8),
          child: GridView.count(
            childAspectRatio: 1.35,
            mainAxisSpacing: 4,
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 4,
            children: [
              CategoryCardWidget(
                title: 'Comedies',
                imagePath: comedyGenreImage,
                onTap: () => _onGenreSelected(context, 35, 'Comedies'),
              ),
              CategoryCardWidget(
                title: 'Crime',
                imagePath: crimeGenreImage,
                onTap: () => _onGenreSelected(context, 80, 'Crime'),
              ),
              CategoryCardWidget(
                title: 'Family',
                imagePath: familyGenreImage,
                onTap: () => _onGenreSelected(context, 10751, 'Family'),
              ),
              CategoryCardWidget(
                title: 'Documentaries',
                imagePath: documentariesGenreImage,
                onTap: () => _onGenreSelected(context, 99, 'Documentaries'),
              ),
              CategoryCardWidget(
                title: 'Dramas',
                imagePath: dramasGenreImage,
                onTap: () => _onGenreSelected(context, 18, 'Dramas'),
              ),
              CategoryCardWidget(
                title: 'Fantasy',
                imagePath: fantasyGenreImage,
                onTap: () => _onGenreSelected(context, 14, 'Fantasy'),
              ),
              CategoryCardWidget(
                title: 'History',
                imagePath: historyGenreImage,
                onTap: () => _onGenreSelected(context, 36, 'History'),
              ),
              CategoryCardWidget(
                title: 'Horror',
                imagePath: horrorGenreImage,
                onTap: () => _onGenreSelected(context, 27, 'Horror'),
              ),
              CategoryCardWidget(
                title: 'Sci-Fi',
                imagePath: scifiGenreImage,
                onTap: () => _onGenreSelected(context, 878, 'Sci-Fi'),
              ),
              CategoryCardWidget(
                title: 'Thriller',
                imagePath: thrillerGenreImage,
                onTap: () => _onGenreSelected(context, 53, 'Thriller'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBarWidget(
          currentIndex: 1,
        ));
  }
}

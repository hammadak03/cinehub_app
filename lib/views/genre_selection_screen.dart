import 'package:cinehub_app/utils/genre_ids.dart';
import 'package:cinehub_app/widgets/custom_bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/category_card_widget.dart';

class GenreSelectionScreen extends StatelessWidget {
  const GenreSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const TextField(
            decoration: InputDecoration(
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
                  title: 'Comedies', imagePath: comedyGenreImage),
              CategoryCardWidget(title: 'Crime', imagePath: crimeGenreImage),
              CategoryCardWidget(title: 'Family', imagePath: familyGenreImage),
              CategoryCardWidget(
                  title: 'Documentaries', imagePath: documentariesGenreImage),
              CategoryCardWidget(title: 'Dramas', imagePath: dramasGenreImage),
              CategoryCardWidget(
                  title: 'Fantasy', imagePath: fantasyGenreImage),
              CategoryCardWidget(
                  title: 'History', imagePath: historyGenreImage),
              CategoryCardWidget(title: 'Horror', imagePath: horrorGenreImage),
              CategoryCardWidget(title: 'Sci-Fi', imagePath: scifiGenreImage),
              CategoryCardWidget(
                title: 'Thriller',
                imagePath: thrillerGenreImage,
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBarWidget(
          currentIndex: 1,
        ));
  }
}

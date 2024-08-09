import 'package:cinehub_app/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../viewmodels/movie_list_model.dart';

class MovieCard extends StatelessWidget {
  final Results movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.24,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Image.network(
                  'https://image.tmdb.org/t/p/original/${movie.posterPath}',
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.24,
                width: MediaQuery.of(context).size.width * 0.9,
                color: Colors.black
                    .withOpacity(0.2), // Black overlay with 20% opacity
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextWidget(
                text: movie.title ?? 'No title', // Safely access the title
                fontSize: 18,
                fontType: 'Poppins',
                fontWeight: FontWeight.w500,
                fontColor: whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

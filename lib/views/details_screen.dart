import 'package:cinehub_app/utils/genre_ids.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../viewmodels/movie_model.dart';
import '../widgets/custom_text_widget.dart';

class DetailsScreen extends StatelessWidget {
  final Results movie;

  const DetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: CustomTextWidget(
          text: movie.title ?? 'Watch',
          fontType: 'Poppins',
          fontSize: 16,
          fontColor: whiteColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.network(
                  'https://image.tmdb.org/t/p/w500${movie.backdropPath}',
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomTextWidget(
                      text: 'Release Date: ${movie.releaseDate}',
                      fontColor: whiteColor,
                      fontType: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          color: skyBlue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: CustomTextWidget(
                            text: 'Get Tickets',
                            fontSize: 14,
                            fontColor: whiteColor,
                            fontType: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          border: Border.all(color: skyBlue),
                          color: Colors.black.withAlpha(100),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.play_arrow,
                                color: whiteColor,
                              ),
                              CustomTextWidget(
                                text: 'Watch Trailer',
                                fontSize: 14,
                                fontColor: whiteColor,
                                fontType: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextWidget(
                    text: 'Genres',
                    fontColor: darkPurple,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontType: 'Poppins',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: movie.genreIds!.map((genreId) {
                        final genre = genreMap[genreId];
                        return genre != null
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: genre['color'],
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 3),
                                    child: CustomTextWidget(
                                      text: genre['name'],
                                      fontColor: whiteColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox.shrink();
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextWidget(
                    text: 'Overview',
                    fontSize: 16,
                    fontColor: darkPurple,
                    fontWeight: FontWeight.w500,
                    fontType: 'Poppins',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextWidget(
                    text: movie.overview ?? 'No overview available.',
                    fontColor: warmGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

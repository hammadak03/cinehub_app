import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/movie_model.dart';
import '../viewmodels/movie_view_model.dart';
import '../widgets/custom_text_widget.dart';
import 'details_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final movieViewModel = Provider.of<MovieViewModel>(context);

    // Ensure filteredMovies is updated when searchQuery changes
    List<Results> filteredMovies = _searchQuery.isEmpty
        ? movieViewModel.movies
        : movieViewModel.movies.where((movie) {
            return movie.title
                    ?.toLowerCase()
                    .contains(_searchQuery.toLowerCase()) ??
                false;
          }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              suffixIcon: _searchQuery.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear, color: Colors.grey),
                      onPressed: () {
                        setState(() {
                          _searchController.clear();
                          _searchQuery = '';
                        });
                        movieViewModel.searchMovies(''); // Reset search
                      },
                    )
                  : null,
              hintText: 'Search...',
              border: InputBorder.none,
            ),
            onChanged: (query) {
              setState(() {
                _searchQuery = query;
                movieViewModel.searchMovies(query); // Search movies
              });
            },
          ),
        ),
      ),
      body: movieViewModel.loading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (_searchQuery.isNotEmpty)
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Top Results',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: filteredMovies.length,
                      itemBuilder: (context, index) {
                        final movie = filteredMovies[index];
                        return ListTile(
                          title: CustomTextWidget(text: movie.title ?? ''),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailsScreen(movie: movie),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movie_explorer/features/movies/widgets/movie_sheet.dart';
import 'package:movie_explorer/theme/theme_app_bar.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MoviesView();
  }
}

class MoviesView extends StatelessWidget {
  const MoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ThemeAppBar(),
      backgroundColor: Colors.grey.shade500,
      body: Center(
        child: MovieSheet(
          imageName: 'no-time-to-die.jpeg',
          title: 'No time to Die',
          tags: const ['Sci-fi', 'Fantasy', 'Adventure'],
          note: 4,
          sheetWidth: MediaQuery.of(context).size.width * 0.75,
        ),
      ),
    );
  }
}

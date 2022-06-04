import 'package:flutter/material.dart';
import 'package:movie_explorer/features/movies/widgets/movie_sheet.dart';
import 'package:movie_explorer/infra/movies/models/movie.dart';
import 'package:movie_explorer/theme/theme_app_bar.dart';

const _kFirstMovieIndex = 0;
const kAnimationDuration = Duration(milliseconds: 250);

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesList = [
      const Movie(
        imageName: 'godzilla.jpeg',
        backgroundImageName: 'godzilla_background.jpeg',
        title: 'Godzilla vs. Kong',
        tags: ['Sci-fi', 'Horror', 'Drama'],
        note: 2,
      ),
      const Movie(
        imageName: 'no-time-to-die.jpeg',
        backgroundImageName: 'no-time-to-die_background.jpeg',
        title: 'No time to Die',
        tags: ['Sci-fi', 'Fantasy', 'Adventure'],
        note: 4,
      ),
      const Movie(
        imageName: 'avengers.jpeg',
        backgroundImageName: 'avengers_background.jpeg',
        title: 'Avengers: Endgame',
        tags: ['Sci-fi', 'Fantasy', 'Adventure'],
        note: 3,
      ),
      const Movie(
        imageName: 'tron.jpeg',
        backgroundImageName: 'tron_background.jpeg',
        title: 'Tron: Legacy',
        tags: ['Sci-fi', 'Fantasy', 'Adventure'],
        note: 5,
      ),
      const Movie(
        imageName: 'dune.jpeg',
        backgroundImageName: 'dune_background.jpeg',
        title: 'Dune "2021"',
        tags: ['Sci-fi', 'Fantasy', 'Drama'],
        note: 4,
      ),
    ];
    return MoviesView(moviesList: moviesList);
  }
}

class MoviesView extends StatefulWidget {
  const MoviesView({
    super.key,
    required this.moviesList,
  });

  final List<Movie> moviesList;

  @override
  State<MoviesView> createState() => _MoviesViewState();
}

class _MoviesViewState extends State<MoviesView> {
  final pageController = PageController(
    viewportFraction: 0.8,
  );
  int selectedMovieIndex = _kFirstMovieIndex;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final progress = pageController.hasClients ? (pageController.page ?? 0) : 0;

    return Stack(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: Container(
            key: ValueKey(widget.moviesList[selectedMovieIndex].title),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topRight,
                image: Image.asset(
                  'assets/${widget.moviesList[selectedMovieIndex].backgroundImageName}',
                  fit: BoxFit.cover,
                ).image,
              ),
            ),
          ),
        ),
        Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [Colors.transparent, Color(0xFFD2D2D2)],
              stops: [0.0, 0.4],
            ),
          ),
        ),
        Scaffold(
          appBar: const ThemeAppBar(),
          backgroundColor: Colors.transparent,
          body: PageView.builder(
            controller: pageController,
            physics: const ClampingScrollPhysics(),
            itemCount: widget.moviesList.length,
            itemBuilder: (context, index) {
              final movie = widget.moviesList[index];

              final isTheSelectedMovie =
                  progress > index - 0.5 && progress < index + 0.5;

              if (isTheSelectedMovie) {
                selectedMovieIndex = index;
              }

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: AnimatedAlign(
                  duration: kAnimationDuration,
                  curve: Curves.easeInOut,
                  alignment: isTheSelectedMovie
                      ? Alignment.center
                      : const Alignment(0, 1.3),
                  child: MovieSheet(
                    imageName: movie.imageName,
                    title: movie.title,
                    tags: movie.tags,
                    note: movie.note,
                    isSelected: isTheSelectedMovie,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

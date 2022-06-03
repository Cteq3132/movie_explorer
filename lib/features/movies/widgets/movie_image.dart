import 'package:flutter/material.dart';
import 'package:movie_explorer/features/movies/widgets/movie_sheet.dart';

class MovieImage extends StatelessWidget {
  const MovieImage({
    super.key,
    required this.imageName,
  });

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kMovieClipRadius),
      child: AspectRatio(
        aspectRatio: 0.7,
        child: Image.asset(
          'assets/$imageName',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

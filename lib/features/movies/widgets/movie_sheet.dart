import 'package:flutter/material.dart';
import 'package:movie_explorer/features/movies/widgets/movie_button.dart';
import 'package:movie_explorer/features/movies/widgets/movie_image.dart';
import 'package:movie_explorer/features/movies/widgets/movie_note.dart';
import 'package:movie_explorer/features/movies/widgets/movie_tags.dart';
import 'package:movie_explorer/features/movies/widgets/movie_title.dart';

const kMovieClipRadius = 150.0;

class MovieSheet extends StatelessWidget {
  const MovieSheet({
    super.key,
    required this.imageName,
    required this.title,
    required this.tags,
    required this.note,
  });

  final String imageName;
  final String title;
  final List<String> tags;
  final int note;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kMovieClipRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 16,
            spreadRadius: -8,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kMovieClipRadius),
        child: ColoredBox(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 30,
            ),
            child: IntrinsicHeight(
              child: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MovieImage(imageName: imageName),
                      const SizedBox(height: 20),
                      MovieTitle(title: title),
                      const SizedBox(height: 10),
                      MovieNote(note: note),
                      const SizedBox(height: 20),
                      MovieTags(tags: tags),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                  const Align(
                    alignment: Alignment(0, 1.08),
                    child: MovieButton(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

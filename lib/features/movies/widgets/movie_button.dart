import 'package:flutter/material.dart';
import 'package:movie_explorer/features/movies/widgets/movie_sheet.dart';

class MovieButton extends StatelessWidget {
  const MovieButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: MaterialButton(
        onPressed: () {},
        color: Colors.black,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kMovieClipRadius),
        ),
        height: 80,
        minWidth: double.infinity,
        child: Align(
          alignment: const Alignment(0, -0.4),
          child: Text(
            'Book Now'.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}

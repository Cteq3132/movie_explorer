import 'package:flutter/material.dart';

class MovieNote extends StatelessWidget {
  const MovieNote({
    super.key,
    required this.note,
  }) : assert(
          note >= 0 && note <= 5,
          'Note must be between 0 and 5',
        );

  final int note;

  @override
  Widget build(BuildContext context) {
    const starSize = 20.0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          Icons.star,
          color: index < note ? Colors.yellow.shade700 : Colors.grey.shade300,
          size: starSize,
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';

class MovieBackground extends StatelessWidget {
  const MovieBackground({
    super.key,
    required this.imageName,
  });

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/$imageName',
      fit: BoxFit.cover,
    );
  }
}

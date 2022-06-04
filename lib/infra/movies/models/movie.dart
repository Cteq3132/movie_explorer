import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  const Movie({
    required this.imageName,
    required this.backgroundImageName,
    required this.title,
    required this.tags,
    required this.note,
  });

  final String imageName;
  final String backgroundImageName;
  final String title;
  final List<String> tags;
  final int note;

  @override
  List<Object> get props => [
        imageName,
        backgroundImageName,
        title,
        tags,
        note,
      ];
}

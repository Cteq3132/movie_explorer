import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  const Movie({
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
  List<Object> get props => [
        imageName,
        title,
        tags,
        note,
      ];
}

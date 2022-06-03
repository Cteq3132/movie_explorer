import 'package:flutter/material.dart';

class MovieTags extends StatelessWidget {
  const MovieTags({
    super.key,
    required this.tags,
  });

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: tags
          .map((tag) {
            return MovieTag(tag: tag);
          })
          .expand(
            (element) => [
              element,
              const SizedBox(
                width: 8,
              )
            ],
          )
          .toList()
          .sublist(0, tags.length * 2 - 1),
    );
  }
}

class MovieTag extends StatelessWidget {
  const MovieTag({super.key, required this.tag});

  final String tag;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.grey.shade400,
        ),
      ),
      child: Text(
        tag,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ThemeAppBar extends StatelessWidget with PreferredSizeWidget {
  const ThemeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    const iconColor = Colors.white;
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 80,
      leading: IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        icon: Row(
          children: [
            const SizedBox(width: 10),
            const Icon(
              Icons.arrow_back_ios_new,
              color: iconColor,
              size: 16,
            ),
            const SizedBox(width: 4),
            Text(
              'Back'.toUpperCase(),
              style: const TextStyle(
                color: iconColor,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            )
          ],
        ),
        onPressed: () {
          // Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: const Icon(
            Icons.more_vert,
            color: iconColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: const Icon(
            Icons.favorite_border,
            color: iconColor,
          ),
          onPressed: () {},
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

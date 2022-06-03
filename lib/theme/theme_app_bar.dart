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
        icon: Row(
          children: const [
            Icon(
              Icons.arrow_back_ios_new,
              color: iconColor,
              size: 16,
            ),
            SizedBox(width: 4),
            Text('Back', style: TextStyle(color: iconColor, fontSize: 16))
          ],
        ),
        onPressed: () {
          // Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.more_vert,
            color: iconColor,
          ),
          onPressed: () {},
        ),
        IconButton(
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

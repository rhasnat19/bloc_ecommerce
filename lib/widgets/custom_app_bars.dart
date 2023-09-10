import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppbar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: Colors.white),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/wishlist');
          },
          icon: const Icon(Icons.favorite),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

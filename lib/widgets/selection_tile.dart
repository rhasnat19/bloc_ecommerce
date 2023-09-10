import 'package:flutter/material.dart';

class SelectionTile extends StatelessWidget {
  final String title;
  const SelectionTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}

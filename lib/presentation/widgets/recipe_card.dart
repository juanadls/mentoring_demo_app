import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String uri;
  final String label;
  final String image;

  const RecipeCard({
    super.key,
    required this.uri,
    required this.label,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(uri),
        Text(label),
        Text(image),
      ],
    );
  }
}

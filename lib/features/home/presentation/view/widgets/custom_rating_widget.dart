import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRatingWidget extends StatelessWidget {
  final String rating;
  const CustomRatingWidget({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Review",
        ),
        const SizedBox(width: 9),
        Text(
          rating,
        ),
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellow.shade700),
      ],
    );
  }
}

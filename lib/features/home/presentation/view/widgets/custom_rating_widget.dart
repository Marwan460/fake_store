import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRatingWidget extends StatelessWidget {
  const CustomRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Review",
        ),
        const SizedBox(width: 9),
        const Text(
          "(4.6)",
        ),
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellow.shade700),
      ],
    );
  }
}

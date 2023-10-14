import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating; // The rating as a double value between 0 and 1

  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    // Ensure that the rating is between 0 and 1
    final double normalizedRating = rating.clamp(0.0, 1.0);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        // Calculate the percentage of color fill for each star
        double starPercentage = (index + 1) / 5;

        // Determine the star icon based on the fill percentage
        IconData starIcon = Icons.star;
        if (normalizedRating < starPercentage - 0.1) {
          starIcon = Icons.star_border;
        } else if (normalizedRating < starPercentage) {
          starIcon = Icons.star_half;
        }

        return Container(
          margin: const EdgeInsets.all(2.0),
          child: Icon(
            starIcon,
            color: Colors.yellow, // Change color as needed
          ),
        );
      }),
    );
  }
}

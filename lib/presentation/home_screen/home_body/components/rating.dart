import 'package:flutter/material.dart';
class Rating extends StatelessWidget {
  Rating({
    super.key,
    required this .initialRating
  });
  double initialRating;
  @override
  Widget build(BuildContext context) {
    var RatingBar;
    return RatingBar.builder(
      initialRating: initialRating,
      itemSize: 50.0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,

      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
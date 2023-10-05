import 'package:flutter/material.dart';

import 'widgets/DetailsScreenBody.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.time,
      required this.rating,
      required this.releaseData,
      required this.summary});
  final String imageUrl;
  final String title;
  final String time;
  final String rating;
  final String releaseData;
  final String summary;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsScreenBody(
          imageUrl: imageUrl,
          rating: rating,
          releaseData: releaseData,
          summary: summary,
          time: time,
          title: title),
    );
  }
}

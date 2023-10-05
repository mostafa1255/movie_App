import 'package:flutter/material.dart';

class customMovieImageDetail extends StatelessWidget {
  const customMovieImageDetail({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: device.width,
      height: device.height * 0.4,
      child: Image.asset(
        "assets/images/MWII-tall-tile.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}

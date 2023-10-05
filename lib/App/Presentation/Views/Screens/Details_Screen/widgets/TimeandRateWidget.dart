import 'package:flutter/material.dart';

class TimeandRateWidget extends StatelessWidget {
  const TimeandRateWidget({
    super.key,
    required this.device,
    required this.time,
    required this.rating,
  });
  final String time;
  final String rating;
  final Size device;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.timer_outlined),
        SizedBox(
          width: device.width * 0.03,
        ),
        Text(time),
        SizedBox(
          width: device.width * 0.1,
        ),
        const Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
        ),
        SizedBox(
          width: device.width * 0.025,
        ),
        Text("$rating  (IMDB)"),
      ],
    );
  }
}

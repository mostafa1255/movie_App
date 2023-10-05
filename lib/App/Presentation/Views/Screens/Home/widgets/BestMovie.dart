import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/App/core/Styles/text_Style.dart';

import '../../../../../core/Styles/constants.dart';

class BestMovie extends StatelessWidget {
  const BestMovie({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: device.width * 0.9,
            height: device.height * 0.25,
            decoration: BoxDecoration(
                color: Constants.kPrimaryColor,
                borderRadius: BorderRadius.circular(30)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/images/MWII-tall-tile.jpg",
                  fit: BoxFit.fill,
                ))),
        Positioned(
          bottom: device.height * 0.02,
          left: device.width * 0.05,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(
                width: device.width * 0.6,
                height: device.height * 0.09,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Constants.korangeColor,
                      child: Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: device.width * 0.05,
                    ),
                    Text(
                      "Ready Play One",
                      style: Textstyle.style16(context: context),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

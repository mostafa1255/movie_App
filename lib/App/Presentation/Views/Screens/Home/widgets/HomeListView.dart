import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../../../core/Styles/text_Style.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: device.width,
      height: device.height * 0.35,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: device.width * 0.03),
            child: Stack(
              children: [
                Container(
                  width: device.width * 0.7,
                  height: device.height * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/MWII-tall-tile.jpg",
                        fit: BoxFit.fill,
                      )),
                ),
                Positioned(
                  left: device.width * 0.4,
                  top: device.height * 0.02,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: Container(
                        width: device.width * 0.22,
                        height: device.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(13)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: device.width * 0.02,
                              vertical: device.height * 0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "IMDb",
                                style: Textstyle.style8(context: context),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.star_rate_rounded,
                                    size: device.width * 0.065,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    "7.0",
                                    style: TextStyle(
                                        fontSize: device.width * 0.045,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                        child: Center(
                          child: Text(
                            "Star Wars: The Last Jedi",
                            style: Textstyle.style16(context: context),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

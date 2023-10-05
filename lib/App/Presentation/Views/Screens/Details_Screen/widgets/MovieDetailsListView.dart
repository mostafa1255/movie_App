import 'package:flutter/material.dart';

class MovieDetailsListView extends StatelessWidget {
  const MovieDetailsListView({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: device.width,
        height: device.height * 0.25,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: device.width * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: device.width * 0.4,
                    height: device.height * 0.15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/MWII-tall-tile.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: device.height * 0.01,
                  ),
                  SizedBox(
                    width: device.width * 0.4,
                    child: const Text(
                      "Star Wars: The Rise of Skywalker (2019)",
                      style: TextStyle(),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}

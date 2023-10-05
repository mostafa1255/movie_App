import 'package:flutter/material.dart';

import '../../../../../core/Styles/text_Style.dart';

class ReleaseDateandGenreWidget extends StatelessWidget {
  const ReleaseDateandGenreWidget({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              "Release date",
              style: Textstyle.style16(context: context),
            ),
            SizedBox(
              height: device.height * 0.015,
            ),
            Text(
              "December 9, 2017",
              style: Textstyle.style12(context: context)
                  .copyWith(color: Colors.grey),
            )
          ],
        ),
        SizedBox(
          width: device.width * 0.2,
        ),
        Column(
          children: [
            Text(
              "Genre",
              style: Textstyle.style16(context: context),
            ),
            SizedBox(
              height: device.height * 0.015,
            ),
            Container(
              width: device.width * 0.17,
              height: device.height * 0.04,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                child: Text(
                  "Action",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

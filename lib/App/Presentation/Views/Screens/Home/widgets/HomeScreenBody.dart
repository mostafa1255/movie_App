import 'package:flutter/material.dart';
import 'package:movie_app/App/core/Styles/constants.dart';
import '../../../../../core/Styles/text_Style.dart';
import 'BestMovie.dart';
import 'HomeListView.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: device.width * 0.04, vertical: device.height * 0.07),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Stream ",
                  style: Textstyle.style24(context: context)
                      .copyWith(color: Constants.korangeColor),
                ),
                Text(
                  "Everywhere",
                  style: Textstyle.style24(context: context),
                ),
              ],
            ),
            SizedBox(
              height: device.height * 0.035,
            ),
            BestMovie(device: device),
            SizedBox(
              height: device.height * 0.035,
            ),
            Text(
              "Trending",
              style: Textstyle.style24(context: context),
            ),
            SizedBox(
              height: device.height * 0.03,
            ),
            Center(child: HomeListView(device: device)),
          ],
        ),
      ),
    );
  }
}

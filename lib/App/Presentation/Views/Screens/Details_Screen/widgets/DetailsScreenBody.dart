import 'package:flutter/material.dart';
import 'package:movie_app/App/core/Styles/text_Style.dart';
import 'MovieDetailsListView.dart';
import 'ReleaseDateandGenreWidget.dart';
import 'TimeandRateWidget.dart';
import 'customMovieImageDetail.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
        child: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customMovieImageDetail(device: device),
          SizedBox(
            height: device.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: device.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Star Wars: The Last Jedi",
                  style: Textstyle.style24(context: context),
                ),
                SizedBox(
                  height: device.height * 0.03,
                ),
                TimeandRateWidget(device: device),
                SizedBox(
                  height: device.height * 0.02,
                ),
                Divider(
                  color: Colors.grey,
                  endIndent: device.width * 0.1,
                  thickness: 0.2,
                  indent: device.width * 0.1,
                ),
                SizedBox(
                  height: device.height * 0.02,
                ),
                ReleaseDateandGenreWidget(device: device),
                SizedBox(
                  height: device.height * 0.02,
                ),
                Divider(
                  color: Colors.grey,
                  endIndent: device.width * 0.1,
                  thickness: 0.2,
                  indent: device.width * 0.1,
                ),
                SizedBox(
                  height: device.height * 0.02,
                ),
                Text(
                  "Summary",
                  style: Textstyle.style16(context: context),
                ),
                SizedBox(
                  height: device.height * 0.02,
                ),
                const Text("Movie Summary Here"),
                SizedBox(
                  height: device.height * 0.03,
                ),
                Text(
                  "Related Movies",
                  style: Textstyle.style16(context: context),
                ),
                SizedBox(
                  height: device.height * 0.02,
                ),
                MovieDetailsListView(device: device)
              ],
            ),
          )
        ],
      ),
    ));
  }
}

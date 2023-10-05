import 'package:flutter/material.dart';
import 'package:movie_app/App/Presentation/Views/Public_Widgets/CustomMovieImage.dart';
import 'package:movie_app/App/core/Styles/text_Style.dart';
import 'MovieDetailsListView.dart';
import 'ReleaseDateandGenreWidget.dart';
import 'TimeandRateWidget.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody(
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
    Size device = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: device.width,
              height: device.height * 0.4,
              child: CustomMovieImage(urlImage: imageUrl)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: device.width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: device.height * 0.03,
                ),
                Text(
                  title,
                  style: Textstyle.style24(context: context),
                ),
                SizedBox(
                  height: device.height * 0.03,
                ),
                TimeandRateWidget(
                  device: device,
                  rating: rating,
                  time: time,
                ),
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
                ReleaseDateandGenreWidget(
                  device: device,
                  releaseData: releaseData,
                ),
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
                Text(summary),
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
          ),
        ],
      ),
    );
  }
}

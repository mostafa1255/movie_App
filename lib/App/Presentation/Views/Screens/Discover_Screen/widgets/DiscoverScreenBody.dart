import 'package:flutter/material.dart';
import 'package:movie_app/App/core/Styles/constants.dart';
import 'package:movie_app/App/core/Styles/text_Style.dart';
import '../../../Public_Widgets/CustomSearchTextFormField.dart';

class DiscoverScreenBody extends StatelessWidget {
  const DiscoverScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.only(
          left: device.width * 0.045,
          right: device.width * 0.045,
          top: device.height * 0.055),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: device.width * 0.7,
            child: Text(
              "Find Movies, Tv series, and more..",
              style: Textstyle.style24(context: context),
            ),
          ),
          SizedBox(
            height: device.height * 0.035,
          ),
          const CustomSearchTextFormField(),
          SizedBox(
            height: device.height * 0.035,
          ),
          SizedBox(
            width: device.width,
            height: device.height * 0.6,
            child: GridView.builder(
              padding: EdgeInsets.zero,
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: device.height * 0.01,
                      horizontal: device.width * 0.02),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Constants.kPrimaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/MWII-tall-tile.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}

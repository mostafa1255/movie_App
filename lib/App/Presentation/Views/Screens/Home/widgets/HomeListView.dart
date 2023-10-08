import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:movie_app/App/Data/Manager/Home_Cubit/home_cubit.dart';
import 'package:movie_app/App/Presentation/Views/Public_Widgets/CustomMovieImage.dart';
import 'package:movie_app/App/Presentation/Views/Screens/Details_Screen/Details_Screen.dart';
import 'package:movie_app/App/core/Styles/constants.dart';
import '../../../../../core/Styles/text_Style.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSucsessForyou) {
          return SizedBox(
            width: device.width,
            height: device.height * 0.35,
            child: ListView.builder(
              itemCount: state.movies.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: device.width * 0.03),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => DetailsScreen(
                          imageUrl: state.movies[index].cover.toString(),
                          title: state.movies[index].title.toString(),
                          time: state.movies[index].duration.toString(),
                          rating: state.movies[index].rating.toString(),
                          releaseData: state.movies[index].year.toString(),
                          summary: state.movies[index].summary.toString()));
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: device.width * 0.7,
                          height: device.height * 0.4,
                          decoration: BoxDecoration(
                              color: Constants.kPrimaryColor,
                              borderRadius: BorderRadius.circular(50)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: CustomMovieImage(
                                  urlImage:
                                      state.movies[index].cover.toString())),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "IMDb",
                                        style:
                                            Textstyle.style8(context: context),
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
                                            state.movies[index].rating
                                                .toString(),
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
                                    state.movies[index].title.toString(),
                                    style: Textstyle.style16(context: context),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is HomeLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is HomeFaliureForyou) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

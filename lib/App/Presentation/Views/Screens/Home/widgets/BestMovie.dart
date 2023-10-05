import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/App/Data/Manager/Home_Cubit/home_cubit.dart';
import 'package:movie_app/App/Presentation/Views/Public_Widgets/CustomMovieImage.dart';
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
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSucsessForyou) {
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
                      child: CustomMovieImage(
                          urlImage: state.movies[8].cover.toString()))),
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
                          Flexible(
                            child: Text(
                              state.movies[8].title.toString(),
                              style: Textstyle.style16(context: context),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
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

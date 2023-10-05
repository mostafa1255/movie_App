import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:movie_app/App/Data/Manager/Home_Cubit/home_cubit.dart';
import 'package:movie_app/App/Presentation/Views/Public_Widgets/CustomMovieImage.dart';
import 'package:movie_app/App/Presentation/Views/Screens/Details_Screen/Details_Screen.dart';
import 'package:movie_app/App/core/Styles/constants.dart';
import 'package:movie_app/App/core/Styles/text_Style.dart';
import '../../../Public_Widgets/CustomSearchTextFormField.dart';

class DiscoverScreenBody extends StatelessWidget {
  const DiscoverScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSucsessForyou) {
          return SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.only(
                left: device.width * 0.045,
                right: device.width * 0.045,
                top: device.height * 0.06),
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
                    itemCount: state.movies.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: device.height * 0.01,
                            horizontal: device.width * 0.02),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => DetailsScreen(
                                imageUrl: state.movies[index].cover.toString(),
                                title: state.movies[index].title.toString(),
                                time: state.movies[index].duration.toString(),
                                rating: state.movies[index].rating.toString(),
                                releaseData:
                                    state.movies[index].year.toString(),
                                summary:
                                    state.movies[index].summary.toString()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Constants.kPrimaryColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: CustomMovieImage(
                                    urlImage:
                                        state.movies[index].cover.toString())),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ));
        } else if (state is HomeLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is HomeFaliureForyou) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          print("In else");
          return const SizedBox();
        }
      },
    );
  }
}

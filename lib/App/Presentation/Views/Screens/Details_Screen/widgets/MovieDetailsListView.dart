import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/App/Data/Manager/Home_Cubit/home_cubit.dart';
import 'package:movie_app/App/Presentation/Views/Public_Widgets/CustomMovieImage.dart';
import 'package:movie_app/App/Presentation/Views/Screens/Details_Screen/Details_Screen.dart';

class MovieDetailsListView extends StatelessWidget {
  const MovieDetailsListView({
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
              height: device.height * 0.25,
              child: ListView.builder(
                itemCount: state.movies.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: device.width * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return DetailsScreen(
                                    imageUrl:
                                        state.movies[index].cover.toString(),
                                    title: state.movies[index].title.toString(),
                                    time:
                                        state.movies[index].duration.toString(),
                                    rating:
                                        state.movies[index].rating.toString(),
                                    releaseData:
                                        state.movies[index].year.toString(),
                                    summary:
                                        state.movies[index].summary.toString());
                              },
                            ));
                          },
                          child: Container(
                            width: device.width * 0.4,
                            height: device.height * 0.15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.green),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: CustomMovieImage(
                                    urlImage:
                                        state.movies[index].cover.toString())),
                          ),
                        ),
                        SizedBox(
                          height: device.height * 0.01,
                        ),
                        SizedBox(
                          width: device.width * 0.4,
                          child: Text(
                            state.movies[index].title.toString(),
                            style: const TextStyle(),
                          ),
                        )
                      ],
                    ),
                  );
                },
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
          return const SizedBox();
        }
      },
    );
  }
}

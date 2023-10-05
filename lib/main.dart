import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:movie_app/App/Data/Manager/Home_Cubit/home_cubit.dart';
import 'package:movie_app/App/Data/Repos/Home_repoImp.dart';
import 'package:movie_app/App/Presentation/Views/Screens/Discover_Screen/Discover_Screen.dart';
import 'package:movie_app/App/Presentation/Views/Screens/Home/home_screen.dart';
import 'package:movie_app/App/core/Styles/constants.dart';
import 'package:movie_app/App/core/Tools/api_Services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              HomeCubit(homeRepo: HomeRepoImp(ApiServeces(Dio())))
                ..fetchForYouMovie()
                ..fetchActionmovie(),
        )
      ],
      child: GetMaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Constants.kPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/App/Presentation/Views/Screens/Splash_Screen/splash_screen.dart';
import 'package:movie_app/App/core/Styles/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Constants.kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashView(),
    );
  }
}

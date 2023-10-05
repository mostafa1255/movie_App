import 'package:flutter/material.dart';
import 'package:movie_app/App/core/Styles/constants.dart';

class EmityScreen extends StatelessWidget {
  const EmityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Constants.kPrimaryColor,
          title: const Text(
            "There is no Screen here",
          ),
          centerTitle: true),
    );
  }
}

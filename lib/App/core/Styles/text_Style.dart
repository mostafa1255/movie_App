import 'package:flutter/material.dart';

class Textstyle {
  static TextStyle style24({required BuildContext context}) {
    return TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.06,
        fontWeight: FontWeight.bold);
  }

  static TextStyle style16({required BuildContext context}) {
    return TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045);
  }

  static TextStyle style12({required BuildContext context}) {
    return TextStyle(fontSize: MediaQuery.of(context).size.width * 0.035);
  }

  static TextStyle style8({required BuildContext context}) {
    return TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03);
  }
}

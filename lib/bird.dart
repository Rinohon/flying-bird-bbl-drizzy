import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyBird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      child: Lottie.asset(
        '../assets/images/nyancat.json',
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyBird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..scale(-1.0, 1.0),
        child: Lottie.asset(
        '../assets/images/nyancat.json',
      ),
      
      
      ),
      
    );
  }
}
import 'package:flutter/material.dart';

class MyBarrier extends StatelessWidget {
  final double size;

  const MyBarrier({required this.size});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth / 4,
      height: size,
      decoration: BoxDecoration(
        color: Colors.purple[800],
        border: Border.all(
          width: 4,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
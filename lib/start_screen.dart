import 'package:fbird3/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              '../assets/images/start_wallpaper.jpg',
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8,
          ),
          child: Column(
            children: [
              Spacer(),
              Lottie.asset(
                '../assets/images/nyancat.json',
                width: deviceWidth / 2,
              ),
              Text(
                'Flying Bird',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Spacer(),
              MenuButton(
                width: deviceWidth,
                color: Colors.blue,
                textColor: Colors.white,
                text: 'Start Game',
                onPress: () {
                  Navigator.of(context).pushNamed(HomePage.ROUTE_NAME);
                },
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 16,
              ),
              MenuButton(
                width: deviceWidth,
                color: Colors.red,
                textColor: Colors.white,
                text: 'Quit',
                onPress: () {
                  SystemNavigator.pop();
                },
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final double width;
  final String text;
  final Color textColor;
  final Color color;
  final VoidCallback onPress;

  const MenuButton({
    required this.width,
    required this.text,
    required this.textColor,
    required this.color,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 52,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPress,
      ),
    );
  }
}

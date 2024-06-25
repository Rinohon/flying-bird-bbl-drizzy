import 'package:fbird3/homepage.dart' as homepage;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:fbird3/select.dart' as select;

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
              Image.asset(
                '../assets/images/bear.gif',
                width: deviceWidth / 2,
              ),
              Text(
                'MAAZII',
                style: TextStyle( 
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Spacer(),
              MenuButton(
                width: deviceWidth,
                color: Colors.white,
                textColor: Colors.blue,
                text: 'Эхлэх',
                onPress: () {
                  Navigator.of(context).pushNamed(homepage.HomePage.ROUTE_NAME);
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
                color: Colors.blue,
                textColor: Colors.white,
                text: 'Дэлгүүр',
                onPress: () {
                  Navigator.of(context).pushNamed(select.Select.ROUTE_NAME);
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

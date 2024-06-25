import 'package:flutter/material.dart';

class Select extends StatelessWidget {
  static const String ROUTE_NAME = '/select';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Row(
          children: [
            Spacer(),
            Icon(Icons.monetization_on),
            SizedBox(width: 10),
            Text('227'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              '../assets/images/bear.gif', 
              width: 200,
              height: 150,
              )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notez/pages/components/player.dart';

class BirthdayGreetingsPage extends StatelessWidget {
  final String age;

  BirthdayGreetingsPage({Key key, @required this.age}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "!!!You are $age today!!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red[700],
                fontSize: 24,
              ),
            ),
            Text(
              "We are wishing you LONG LIFE AND PROSPERITY.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Image.asset(
              "assets/images/birthday.png",
              fit: BoxFit.cover,
              width: 250,
              height: 250,
            ),
            SizedBox(
              height: 32,
            ),
            Player(),
          ],
        ),
      ),
    );
  }
}

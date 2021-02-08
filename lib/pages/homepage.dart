import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notez/pages/components/form.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Birthday Greeter",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                color: Colors.indigo[700],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: width * 0.9,
              child: AgeForm(),
            ),
          ],
        ),
      ),
    );
  }
}

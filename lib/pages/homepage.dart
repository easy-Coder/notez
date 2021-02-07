import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notez/pages/components/form.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter your age below",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            Container(
              child: Stack(
                children: [AgeForm()],
              ),
            )
          ],
        ),
      ),
    );
  }
}

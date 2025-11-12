import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 70,
              width: double.infinity, // Height for the blue container
              color: Colors.blue, // Blue background
              child: Padding(padding: const EdgeInsets.all(0)),
            ),
          ],
        ),
      ),
    ),
  );
}

enum GradientColors {
  phnompenh(
    LinearGradient(
      colors: [Colors.purple, Colors.purpleAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight
      )
    ),
  paris(
    LinearGradient(
      colors: [Colors.cyan, Colors.cyanAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight
    )
  ),
  rome(
    LinearGradient(
      colors: [Colors.pink, Colors.pinkAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight
    )
  ),
  toulous(
    LinearGradient(
      colors: [Colors.orange, Colors.orangeAccent]
    )
  );

  final LinearGradient gradient;
  const GradientColors(this.gradient);
}

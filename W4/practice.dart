import 'package:flutter/material.dart';
import 'gradiant_button.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          children: [
            GradiantButton(text: "hello 1", start: Colors.blue, end: Colors.red),
            GradiantButton(text: "hello 2", start: Colors.blue, end: Colors.red),
            GradiantButton(text: "hello 3", start: Colors.blue, end: Colors.red),
          ],
        ),
      ),
    ),
  ));
}

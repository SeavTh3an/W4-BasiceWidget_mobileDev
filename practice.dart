import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Text('Hello 1', style: TextStyle(fontSize: 35),),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    )
  );
}
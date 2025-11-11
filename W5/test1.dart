import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: 30, height: 20, color: Colors.blue,),
              Container(width: 40, height: 50, color: const Color.fromARGB(255, 25, 173, 32),),
              Container(width: 50, height: 30, color: const Color.fromARGB(255, 147, 192, 42),),
            ],
          ),
        ),
      )
    )
  );
}

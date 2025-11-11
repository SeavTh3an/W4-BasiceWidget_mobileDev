import 'package:flutter/material.dart';

class GradiantButton extends StatelessWidget {
  final String text;
  final MaterialColor start;
  final MaterialColor end;

  const GradiantButton({super.key, required this.text, required this.start, required this.end});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [start, end]),
        borderRadius: BorderRadius.circular(30)
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.w700, decoration: TextDecoration.none),
      )
    );
  }
}

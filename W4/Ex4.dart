import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final MaterialColor color;
  final int colorShade;

  const CustomCard({
    super.key,
    required this.text,
    required this.color,
    required this.colorShade,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color[colorShade],
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Container(
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          CustomCard(text: 'OOP', color: Colors.blue, colorShade: 100),
          CustomCard(text: 'DART', color: Colors.blue, colorShade: 300),
          CustomCard(text: 'FLUTTER', color: Colors.blue, colorShade: 600),
        ],
      )
    ),
  ));
}

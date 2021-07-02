import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.black,
            Color(0xFF182835),
          ], stops: [
            0.5,
            1.0
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Container(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  "plans.png",
                ),
              ),
              Container(
                color: Colors.black.withAlpha(100),
                padding: EdgeInsets.all(128),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "What turns\nyour fever\nup?",
                      style: TextStyle(fontSize: 64, color: Colors.white, fontFamily: 'Anton'),
                    ),
                    SizedBox(height: 46),
                    Text(
                      "They say there’s a\nsomeone for everyone.\nWe think there’s a plan for everyone.\nFind your type.",
                      style: TextStyle(fontSize: 24, color: Colors.white, fontFamily: 'Custom', fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

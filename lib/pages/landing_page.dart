import 'package:fever_hackaton/navigation/navigation_servide.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

import '../locator.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: _createGradient()),
        child: Stack(
          children: [_backgroundImage(), _titleAndDescriptionContainer(context)],
        ),
      ),
    );
  }

  Widget _backgroundImage() {
    return Container(
      child: Align(
        alignment: Alignment.topRight,
        child: Image.asset(
          "plans.png",
        ),
      ),
    );
  }

  Widget _titleAndDescriptionContainer(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    return Margin(
      child: Align(
        alignment: (kIsWeb && width > 1200) ? Alignment.centerLeft : Alignment.center,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _createTitle(),
              SizedBox(height: 46),
              _createDescription(),
              SizedBox(height: 46),
              _createButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createTitle() {
    return const Text(
      "What turns\nyour fever\nup?",
      style: TextStyle(fontSize: 64, color: Colors.white, fontFamily: 'Anton'),
    );
  }

  Widget _createDescription() {
    return const Text(
      "They say there’s a\nsomeone for everyone.\nWe think there’s a plan \nfor everyone.\nFind your type.",
      style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontFamily: 'Custom',
          fontWeight: FontWeight.normal),
    );
  }

  Widget _createButton() {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          side: BorderSide(
        color: Colors.white,
        width: 6,
      )),
      onPressed: () {
        locator<NavigationService>().navigateTo('/first');
      },
      child: Container(
          alignment: Alignment.center,
          width: 270,
          padding: EdgeInsets.all(16),
          child: Text(
            'FIND OUT',
            style: TextStyle(
                fontSize: 36, color: Colors.white, fontFamily: 'Anton'),
          )),
    );
  }

  LinearGradient _createGradient() {
    return const LinearGradient(colors: [
      Colors.black,
      Color(0xFF182835),
    ], stops: [
      0.2,
      1.0
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
  }
}

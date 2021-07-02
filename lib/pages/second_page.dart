import 'package:fever_hackaton/constants.dart';
import 'package:fever_hackaton/navigation/navigation_servide.dart';
import 'package:fever_hackaton/plan_model.dart';
import 'package:fever_hackaton/shared/event_view.dart';
import 'package:flutter/material.dart';
import '../locator.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF182835),
        body: Stack(
          children: [
            loadImages(),
            title(),
          ],
        ));
  }

  Widget title() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
            color: Color(0xFF06232C).withAlpha(180),
            shape: BoxShape.circle
        ),
        child: createText('VS'),
      ),
    );
  }

  Widget loadImages() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Listener(
            onPointerHover: (_) {

            } ,
            child: GestureDetector(
              onTap: () => locator<NavigationService>().navigateTo('/third'),
              child: EventView(
                planModel:
                PlanModel(id: "1", name: "Ruca", image: Constants.cinema),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => locator<NavigationService>().navigateTo('/third'),
            child: EventView(
              planModel:
              PlanModel(id: "1", name: "Ruca", image: Constants.theater),
            ),
          ),
        ],
      ),
    );
  }

  Widget createImageContainer() {
    return Container();
  }

  Widget createText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 64,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

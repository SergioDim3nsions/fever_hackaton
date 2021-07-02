import 'package:fever_hackaton/constants.dart';
import 'package:fever_hackaton/navigation/navigation_servide.dart';
import 'package:fever_hackaton/plan_model.dart';
import 'package:fever_hackaton/shared/event_view.dart';
import 'package:flutter/material.dart';

import '../locator.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF182835),
        body: Stack(
          children: [
            loadImages(context),
            title(),
          ],
        ));
  }

  Widget title() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
            color: Color(0xFF06232C).withAlpha(180), shape: BoxShape.circle),
        child: createText('VS'),
      ),
    );
  }

  Widget loadImages(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: (screenWidth < 700)
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Listener(
            onPointerHover: (_) {},
            child: GestureDetector(
              onTap: () =>
                  locator<NavigationService>().navigateTo('/result'),
              child: EventView(
                planModel: PlanModel(
                    id: "1", name: "Ruca", image: Constants.abstract),
              ),
            ),
          ),
          GestureDetector(
            onTap: () =>
                locator<NavigationService>().navigateTo('/result'),
            child: EventView(
              planModel: PlanModel(
                  id: "1", name: "Ruca", image: Constants.museum),
            ),
          ),
        ],
      )
          : Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Listener(
            onPointerHover: (_) {},
            child: GestureDetector(
              onTap: () =>
                  locator<NavigationService>().navigateTo('/result'),
              child: EventView(
                planModel: PlanModel(
                    id: "1", name: "Ruca", image: Constants.abstract),
              ),
            ),
          ),
          GestureDetector(
            onTap: () =>
                locator<NavigationService>().navigateTo('/result'),
            child: EventView(
              planModel: PlanModel(
                  id: "1", name: "Ruca", image: Constants.museum),
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

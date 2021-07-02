import 'package:fever_hackaton/plan_model.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class EventView extends StatelessWidget {
  final PlanModel planModel;

  const EventView({
    Key? key,
    required this.planModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      child: FadeInImage(
        placeholder: MemoryImage(kTransparentImage),
        width: width * 0.5,
        height: height * 0.5,
        fit: BoxFit.cover,
        image: NetworkImage(planModel.image),
      ),
    );
  }
}

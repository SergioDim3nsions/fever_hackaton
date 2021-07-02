import 'package:fever_hackaton/plan_model.dart';
import 'package:fever_hackaton/widget/plan_item.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

class PlanList extends StatelessWidget {
  final List<PlanModel> items;

  const PlanList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverMargin(
        sliver: SliverGrid.extent(
      childAspectRatio: 0.75,
      maxCrossAxisExtent: 300,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      children: items.map((plan) => PlanItem(planModel: plan)).toList(),
    ));
  }
}

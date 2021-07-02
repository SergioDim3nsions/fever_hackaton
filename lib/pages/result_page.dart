import 'package:fever_hackaton/widget/header.dart';
import 'package:fever_hackaton/widget/plan_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: CustomScrollView(
          slivers: [
            Header(),
            PlanList(items: Constants.getPlans())
            //MovieList(items: response.data!.results),
          ],
        ),
      ),
    );
  }
}

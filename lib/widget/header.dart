import 'package:auto_size_text/auto_size_text.dart';
import 'package:fever_hackaton/styles/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

import '../constants.dart';

class Header extends StatelessWidget {
  final bool isDetail;

  const Header({
    Key? key,
    this.isDetail = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerHeight = MediaQuery.of(context).size.height * 0.7;

    return SliverToBoxAdapter(
      child: Container(
        height: headerHeight,
        child: Stack(
          children: [
            _background(),
            _gradient(),
            _titleAndDescription(context),
          ],
        ),
      ),
    );
  }

  Widget _background() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: NetworkImage(Constants.burger),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _gradient() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black.withOpacity(0.0), Colors.black],
              stops: [0.5, 0.9])),
    );
  }

  Widget _titleAndDescription(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Margin(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AutoSizeText(
            "Hamburguesa para dos!",
            maxLines: 1,
            style: Styles.transparentWhiteTextLarge,
          ),
          SizedBox(
            height: 20,
          ),
          isDetail
              ? Container()
              : Container(
                  width: kIsWeb ? screenWidth * 0.50 : double.infinity,
                  child: AutoSizeText(
                    "Hamburguesa para dos!",
                    minFontSize: 16,
                    maxLines: 4,
                    style: Styles.transparentWhiteTextMedium,
                  ),
                ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

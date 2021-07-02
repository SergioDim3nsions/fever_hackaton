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
            _background(context),
            _gradient(),
          ],
        ),
      ),
    );
  }

  Widget _background(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: double.infinity,
      width: double.infinity,
      child: (width < 1200)
          ? Column(
              children: [_imageSelected(), _createDescription()],
            )
          : Row(
              children: [_createDescription(), _imageSelected()],
            ),
    );
  }

  Widget _createDescription() {
    return Expanded(
        child: Container(
      child: Margin(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'VIEJOVEN',
              style:
              TextStyle(fontFamily: 'Anton', fontSize: 64, color: Colors.white),
            ),
            Text(
              Constants.viejunoText,
              maxLines: 8,
              overflow: TextOverflow.ellipsis,
              style:
                  TextStyle(fontFamily: 'Custom', fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _imageSelected() {
    return Margin(
      child: Container(
        margin: EdgeInsets.only(top: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image(
            image: NetworkImage(Constants.plan1),
            fit: BoxFit.cover,
          ),
        ),
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
              stops: [0.9, 1.0])),
    );
  }
}

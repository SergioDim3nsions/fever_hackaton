import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class Header extends StatelessWidget {
  final bool isDetail;

  const Header({
    Key? key,
    this.isDetail = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final multi = kIsWeb ? 0.7 : 1;
    final headerHeight = MediaQuery.of(context).size.height * multi;

    return SliverToBoxAdapter(
      child: Container(
        height: headerHeight,
        child: Stack(
          children: [
            _background(context),
          ],
        ),
      ),
    );
  }

  Widget _background(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      child: (width < 1200)
          ? Column(
              children: [
                _imageSelected(),
                _createDescription(),
              ],
            )
          : Row(
              children: [
                _createDescription(),
                _imageSelected(),
              ],
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
              style: TextStyle(
                  fontFamily: 'Anton', fontSize: 64, color: Colors.white),
            ),
            Text(
              Constants.viejunoText,
              maxLines: 8,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontFamily: 'Custom', fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _imageSelected() {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => _launchInBrowser('https://feverup.com/m/93705'),
      child: Margin(
        child: Container(
          margin: EdgeInsets.only(top: 16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(Constants.plan1),
              fit: BoxFit.cover,
            ),
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

  Future<void> _launchInBrowser(String url) async {
    print(url);
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}

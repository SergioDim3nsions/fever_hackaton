import 'package:fever_hackaton/plan_model.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class PlanItem extends StatelessWidget {
  final PlanModel planModel;

  const PlanItem({Key? key, required this.planModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: () => _launchInBrowser(planModel.url),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: FadeInImage(
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover,
            image: NetworkImage(planModel.image),
            placeholder: MemoryImage(kTransparentImage),
          ),
        ),
      ),
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

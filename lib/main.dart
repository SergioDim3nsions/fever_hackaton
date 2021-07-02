import 'package:fever_hackaton/locator.dart';
import 'package:fever_hackaton/manager/image_provider.dart';
import 'package:fever_hackaton/navigation/navigation_servide.dart';
import 'package:fever_hackaton/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  RouteManager.generateRoute();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ImageManager())],
      child: Layout(
        format: MaterialLayoutFormat(margin: setScreenMargin()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: locator<NavigationService>().navigatorKey,
          title: 'Ruca & Bloste',
          initialRoute: '/landing',
          onGenerateRoute: RouteManager.router.generator,
        ),
      ),
    );
  }

  LayoutValue<double> setScreenMargin() {
    return LayoutValue.widthBuilder((width) {
      if (width < 600) {
        return 16.0;
      } else if (width < 1024) {
        return 24.0;
      } else if (width < 1440) {
        return 48.0;
      } else {
        return 96.0;
      }
    });
  }
}

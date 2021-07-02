import 'package:fever_hackaton/pages/first_page.dart';
import 'package:fever_hackaton/pages/fourth_page.dart';
import 'package:fever_hackaton/pages/landing_page.dart';
import 'package:fever_hackaton/pages/result_page.dart';
import 'package:fever_hackaton/pages/second_page.dart';
import 'package:fever_hackaton/pages/third_page.dart';
import 'package:fluro/fluro.dart';

class RouteManager {
  static final router = FluroRouter();

  static void generateRoute() {
    router.define('/', handler: _landingPage, transitionType: TransitionType.fadeIn);
    router.define('/landing', handler: _landingPage, transitionType: TransitionType.fadeIn);
    router.define('/first', handler: _firstPage, transitionType: TransitionType.fadeIn);
    router.define('/second', handler: _secondPage, transitionType: TransitionType.fadeIn);
    router.define('/third', handler: _thirdPage, transitionType: TransitionType.fadeIn);
    router.define('/fourth', handler: _fourthPage, transitionType: TransitionType.fadeIn);
    router.define('/result', handler: _resultPage, transitionType: TransitionType.fadeIn);
  }

  //Handlers
  static final _landingPage = Handler(handlerFunc: (_, __) => LandingPage());
  static final _firstPage = Handler(handlerFunc: (_, __) => FirstPage());
  static final _secondPage = Handler(handlerFunc: (_, __) => SecondPage());
  static final _thirdPage = Handler(handlerFunc: (_, __) => ThirdPage());
  static final _fourthPage = Handler(handlerFunc: (_, __) => FourthPage());
  static final _resultPage = Handler(handlerFunc: (_, __) => ResultPage());
}

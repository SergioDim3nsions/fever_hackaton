import 'package:flutter/material.dart';

class Styles {
  static final TextStyle baseText =
      TextStyle(fontFamily: 'Futura', color: Colors.white, fontSize: 16);

  static final transparentWhiteText =
      baseText.copyWith(color: Colors.white.withOpacity(0.60));
  static final transparentWhiteTextMedium =
      transparentWhiteText.copyWith(fontSize: 24);
  static final transparentWhiteTextLarge =
      transparentWhiteText.copyWith(fontSize: 100);

  static final whiteTextMedium = baseText.copyWith(fontSize: 24);
}

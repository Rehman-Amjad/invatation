import 'package:flutter/cupertino.dart';

class LinearGradientUtil {
  static BoxDecoration getGradientDecoration({
    required List<Color> colors,
    Alignment begin = Alignment.bottomCenter,
    Alignment end = Alignment.topCenter,
  }) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: colors,
        begin: begin,
        end: end,
      ),
    );
  }
}
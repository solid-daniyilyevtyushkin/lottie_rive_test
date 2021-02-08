import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatelessWidget {
  final String asset;
  final bool repeat;
  final bool reverse;
  final bool animate;

  LottieAnimation({
    this.asset,
    this.repeat,
    this.reverse,
    this.animate,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      asset,
      repeat: repeat,
      reverse: reverse,
      animate: animate,
    );
  }
}

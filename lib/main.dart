import 'package:flutter/material.dart';

import 'lottie_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 100.0,
                  width: 100.0,

                  /// Works on `flutter run -d chrome --dart-define=FLUTTER_WEB_USE_SKIA=true`
                  /// Doesn't work on HTML
                  /// https://github.com/flutter/flutter/issues/60461

                  child: LottieAnimation(
                    asset: 'assets/lottie_file.json',
                    repeat: true,
                    reverse: true,
                    animate: true,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

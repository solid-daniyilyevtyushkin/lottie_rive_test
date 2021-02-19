import 'dart:js' as js;

import 'package:flutter/material.dart';

import 'lottie_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final isSkia = js.context["flutterCanvasKit"] != null;
    final renderer = isSkia ? 'SKIA' : 'HTML';

    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Current renderer: $renderer",
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Initial color"),
                      SizedBox(
                        height: 250.0,
                        width: 250.0,
                        child: LottieAnimation(
                          asset: 'assets/lottie_file.json',
                          repeat: true,
                          animate: true,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Black"),
                      SizedBox(
                        height: 300.0,
                        width: 300.0,
                        child: LottieAnimation(
                          asset: 'assets/lottie_file_2.json',
                          repeat: true,
                          animate: true,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Custom colors"),
                      SizedBox(
                        height: 300.0,
                        width: 300.0,
                        child: LottieAnimation(
                          asset: 'assets/lottie_file_4.json',
                          repeat: true,
                          animate: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Complex Lottie animation"),
                      SizedBox(
                        height: 600.0,
                        width: 800.0,
                        child: LottieAnimation(
                          asset: 'assets/complex_lottie.json',
                          repeat: true,
                          animate: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

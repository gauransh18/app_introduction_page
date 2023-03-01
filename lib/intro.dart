import 'package:app_start/intro_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              Page1(),
              Page2(),
              Page3(),
              Page4(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: SmoothPageIndicator(controller: _controller, count: 4),
            ),
          )
        ],
      ),
    );
  }
}

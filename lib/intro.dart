import 'package:app_start/home_page.dart';
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
  bool _isLastPage = false;

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
            onPageChanged: (value) => {
              if (value == 3)
                {
                  setState(() {
                    _isLastPage = true;
                  })
                }
              else
                {
                  setState(() {
                    _isLastPage = false;
                  })
                }
            },
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(3);
                    },
                    child: Container(
                      height: 20,
                      width: 50,
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 7),
                  alignment: Alignment.bottomCenter,
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const WormEffect(
                      dotWidth: 10,
                      dotHeight: 10,
                      activeDotColor: Colors.white,
                      dotColor: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: _isLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          },
                          child: Container(
                            
                            height: 20,
                            width: 50,
                            child: const Text(
                              "Done",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                         
                          onTap: () {
                            
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Container(
                            height: 20,
                            width: 50,
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

//page1
class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

final Widget podcastSVG = SvgPicture.asset(
  'assets/podcast.svg',
  semanticsLabel: 'Podcast',
);

final Widget happySVG = SvgPicture.asset(
  'assets/happy.svg',
  semanticsLabel: 'Happy',
);

final Widget melloSVG = SvgPicture.asset(
  "assets/mello.svg",
  semanticsLabel: 'Mello',
);

final Widget mediaPlayerSVG = SvgPicture.asset(
  "assets/media_player.svg",
  semanticsLabel: 'Media Player',
);

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: melloSVG,
            ),
          ],
        ),
      ),
    );
  }
}

//page2
class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: podcastSVG,
            ),
          ],
        ),
      ),
    );
  }
}

//page3
class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: happySVG,
            ),
          ],
        ),
      ),
    );
  }
}

//page4
class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: mediaPlayerSVG,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Discover the magic of Marshmello with our app! Explore his music and unique style with exclusive content, behind-the-scenes access, and personalized playlists. Join the party and experience Marshmello like never before. Enjoy the app!',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
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
              width: 250,
              child: podcastSVG,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Welcome to our podcast world! Our app has a variety of topics ranging from music, entertainment, news, and lifestyle, giving you access to a world of podcasts. Tune in to your favorite shows or explore new ones, all at your fingertips. Enjoy listening on the go with our app!",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Boost your mood with our app's happy and uplifting songs! Get moving and grooving with our selection of catchy pop tunes and upbeat dance tracks. Enjoy the app and feel the happy vibes!",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Thanks for choosing our app! Our app is user-friendly, allowing you to enjoy your favorite tunes with ease. Take control of your music experience with personalized playlists and shuffling songs. Enjoy your music on the go with our app!",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

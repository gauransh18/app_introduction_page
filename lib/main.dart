// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'package:app_start/home_page.dart';
import 'package:app_start/intro.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var prefs = await SharedPreferences.getInstance();
  var boolKey = 'isFirstTime';
  var isFirstTime = prefs.getBool(boolKey) ?? true;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isFirstTime ? IntroD(prefs, boolKey) : HomePage(),
    ),
  );
  // runApp(const MyApp());
}

class IntroD extends StatelessWidget {
  final SharedPreferences prefs;
  final String boolKey;
  IntroD(this.prefs, this.boolKey);

  Widget build(BuildContext context) {
    prefs.setBool(boolKey, false);
    return Intro();
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Splash(),
//     );
//   }
// }

// class Splash extends StatefulWidget {
//   const Splash({super.key});

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
  // Future checkFirstSeen() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   bool seen = (prefs.getBool('seen') ?? false);

  //   if (seen) {
  //     Navigator.of(context)
  //         .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
  //   } else {
  //     await prefs.setBool('seen', true);
  //     Navigator.of(context)
  //         .pushReplacement(MaterialPageRoute(builder: (context) => Intro()));
  //   }
  // }

  // @override
  // void afterFirstLayout(BuildContext context) => checkFirstSeen();

  //  final splashDelay = 2;

  // @override
  // void initState() {
  //   super.initState();

  //   _loadWidget();
  // }

  // _loadWidget() async {
  //   var _duration = Duration(seconds: splashDelay);
  //   return Timer(_duration, checkFirstSeen);
  // }

  // Future checkFirstSeen() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   bool _introSeen = (prefs.getBool('intro_seen') ?? false);
    
  //   Navigator.pop(context);
  //   if (_introSeen) {
  //     Navigator.pushNamed(context, Routing.HomeViewRoute);
  //   } else {
  //     await prefs.setBool('intro_seen', true);
  //     Navigator.pushNamed(context, Routing.IntroViewRoute);
  //   }
  // }

//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text("LoAdiNG"),);
//   }
// }

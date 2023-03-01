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

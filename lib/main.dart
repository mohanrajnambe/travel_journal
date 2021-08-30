import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.white, backgroundColor: Colors.white),
        home: HomePage());
    // home: JournalDetail(
    //     image: 'assets/images/bg1.png',
    //     title: 'Trip to Tokyo',
    //     date: 'March 21, 2019',
    //     description:
    //         'Tokyo life comes at night. Life at Tokyo is heaven which has to experienced once...'),
    // );
  }
}

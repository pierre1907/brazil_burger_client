import 'package:brazil_burger_client/pages/welcome.pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brazil Burger',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const WelcomePage(),
    );
  }
}

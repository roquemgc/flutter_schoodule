import 'package:flutter/material.dart';
import 'package:flutter_schoodule/Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: WelcomeScreen(),
    );
  }
}




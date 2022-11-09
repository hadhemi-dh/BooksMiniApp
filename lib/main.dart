import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home.screen.dart';

void main() {
  runApp(HomePage());

}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home : SafeArea(child: HomeScreen()),

    );
  }
}

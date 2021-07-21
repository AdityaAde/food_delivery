import 'package:flutter/material.dart';
import 'package:food_delivery/src/onboarding/onboarding1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: OnboardSatu(),
      ),
    );
  }
}

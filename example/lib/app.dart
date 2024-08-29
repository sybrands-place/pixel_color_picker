import 'package:example/screens/home/screen.dart';
import 'package:flutter/material.dart';

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Example App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

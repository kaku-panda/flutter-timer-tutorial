import 'package:flutter/material.dart';
import 'clock.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Timer',
    theme: ThemeData(
      primarySwatch: Colors.lightGreen,
    ),
    home: const MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
      ),
      body: const Center(
        child: Clock(),
      ),
    );
  }
}
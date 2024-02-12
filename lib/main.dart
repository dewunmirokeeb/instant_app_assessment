import 'package:flutter/material.dart';
import 'package:simple_instant_app/confetti_loading_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Confetti Instant App',
      home: ConfettiLoadingScreen(),
    );
  }
}

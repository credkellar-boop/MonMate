import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';

void main() {
  runApp(const MonMateApp());
}

class MonMateApp extends StatelessWidget {
  const MonMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // Matches your "Pulsing UI" aesthetic
      home: const GameScreen(),
    );
  }
}

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('MonMate: High-Frequency Web3 Chess')),
    );
  }
}

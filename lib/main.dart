import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MotivationApp());
}

class MotivationApp extends StatelessWidget {
  const MotivationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Motivation',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.deepPurple.shade50,
      ),
      home: const MotivationHome(),
    );
  }
}

class MotivationHome extends StatefulWidget {
  const MotivationHome({super.key});

  @override
  State<MotivationHome> createState() => _MotivationHomeState();
}

class _MotivationHomeState extends State<MotivationHome> {
  final List<String> quotes = [
    "Believe in yourself and all that you are.",
    "Every day is a fresh start.",
    "Small steps lead to big changes.",
    "You are stronger than you think.",
    "Don’t stop until you’re proud.",
    "Dream it. Wish it. Do it.",
    "Your effort today shapes your tomorrow.",
  ];

  String currentQuote = "Tap the button for motivation 💪";

  void getNewQuote() {
    final random = Random();
    setState(() {
      currentQuote = quotes[random.nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Motivation'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  currentQuote,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: getNewQuote,
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Get Motivation",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

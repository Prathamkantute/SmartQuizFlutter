import 'package:avd_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:avd_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activescreen = 'startscreen';

  void switchscreen() {
    setState(() {
      activescreen = 'questionscreen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchscreen);
    //setting content of screenWidget based on the value of activescreen (conditional rendering)
    if (activescreen == 'questionscreen') {
      screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 120, 6, 124),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

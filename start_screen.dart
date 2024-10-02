 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Let\'s learn!!!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 22, 21, 21),
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 9, 9, 8),
              side: const BorderSide(color: Color.fromARGB(255, 14, 12, 7)),
            ),
            child: const Text(
              'Start Quiz',
              style: TextStyle(color: Color.fromARGB(255, 11, 11, 11)),
            ),
          ),
        ],
      ),
    );
  }
}
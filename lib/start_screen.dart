// import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart ';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset('assets/images/quiz-logo.png', width: 300),
          // ),
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(height: 80),
          Text(
            'Learn Flutter WIdgets',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 211, 161, 252),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt, color: Colors.white),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const QuestionsScreen(),
              //   ),
              // );
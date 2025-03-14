// import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart ';

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
            style: TextStyle(color: Colors.white, fontSize: 30),
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
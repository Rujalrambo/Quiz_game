import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(content) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,

      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 211, 161, 252),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.shuffledAnswers.map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}


// Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             'Learn Flutter Widgets',
//             style: TextStyle(color: Colors.white, fontSize: 30),
//           ),
//           SizedBox(height: 30),
//           OutlinedButton.icon(
//             onPressed: () {},
//             style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
//             icon: Icon(Icons.arrow_right_alt, color: Colors.white),
//             label: const Text('1st Question'),
//           ),
//           OutlinedButton.icon(
//             onPressed: () {},
//             style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
//             icon: Icon(Icons.arrow_right_alt, color: Colors.white),
//             label: const Text('2nd Question'),
//           ),
//           OutlinedButton.icon(
//             onPressed: () {},
//             style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
//             icon: Icon(Icons.arrow_right_alt, color: Colors.white),
//             label: const Text('3rd Question'),
//           ),
//           OutlinedButton.icon(
//             onPressed: () {},
//             style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
//             icon: Icon(Icons.arrow_right_alt, color: Colors.white),
//             label: const Text('4th Question'),
//           ),
//         ],
//       ),
//     );
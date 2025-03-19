import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      // loop body
      summary.add({
        'question_index': i,
        // 'question': 'Question ${i + 1}',
        'question': questions[i].text,
        // 'answer': choosenAnswers[i],
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers =
        summaryData.where((data) {
          return data['correct_answer'] == data['user_answer'];
        }).length;

    return SizedBox(
      width: double.infinity,

      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectAnswers out of $numTotalQuestions questions correctly!',
              style: TextStyle(
                color: const Color.fromARGB(255, 211, 161, 252),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            QuestionsSummary(summaryData),

            SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: Icon(Icons.refresh, color: Colors.white),
              label: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/widgets.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          summaryData.map((data) {
            return Row(
              children: [
                Text(((data['question'] as int) + 1).toString()),
                // Text(data['question'] as String),
                Text(data['correct_answer'] as String),
                Text(data['user_answer'] as String),
              ],
            );
          }).toList(),
    );
  }
}

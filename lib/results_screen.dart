import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Congratulations!',
              style: TextStyle(
                color: const Color.fromARGB(255, 211, 161, 252),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'You have completed the quiz!',
              style: TextStyle(
                color: const Color.fromARGB(255, 211, 161, 252),
                fontSize: 24,
              ),
            ),
            SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: Icon(Icons.arrow_right_alt, color: Colors.white),
              label: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

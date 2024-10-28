import 'package:avd_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:avd_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 30),
            AnswerButton(
              answertext: currentQuestion.answers[0],
              onTap: () {},
            ),
            AnswerButton(
              answertext: currentQuestion.answers[1],
              onTap: () {},
            ),
            AnswerButton(
              answertext: currentQuestion.answers[2],
              onTap: () {},
            ),
            AnswerButton(
              answertext: currentQuestion.answers[3],
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

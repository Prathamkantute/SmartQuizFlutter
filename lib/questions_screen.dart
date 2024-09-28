import 'package:avd_basics/answer_button.dart';
import 'package:flutter/material.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'The question...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 30),
            AnswerButton(
              answertext: 'Answer 1',
              onTap: () {},
            ),
            AnswerButton(
              answertext: 'Answer 2',
              onTap: () {},
            ),
            AnswerButton(
              answertext: 'Answer 3',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

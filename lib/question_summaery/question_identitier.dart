import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(this.isCorrectQuestion, this.questionIndex,
      {super.key});

  final int questionIndex;
  final bool isCorrectQuestion;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectQuestion
            ? const Color.fromARGB(255, 58, 248, 0)
            : const Color.fromARGB(255, 241, 238, 42),
        borderRadius: BorderRadius.circular(300),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}

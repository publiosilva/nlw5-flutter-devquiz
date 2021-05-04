import 'package:DevQuiz/challenge/answer/answer_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  QuizWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          AnswerWidget(
            title:
                'Possibilita a criação de aplicativos compilados nativamente',
            isRight: false,
            isSelected: false,
          )
        ],
      ),
    );
  }
}

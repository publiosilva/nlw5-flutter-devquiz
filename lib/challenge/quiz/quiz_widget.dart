import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../answer/answer_widget.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  QuizWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Text(
              title,
              style: AppTextStyles.heading,
            ),
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

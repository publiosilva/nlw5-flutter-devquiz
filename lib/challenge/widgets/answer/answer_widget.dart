import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';

class AnswerWidget extends StatelessWidget {
  final AnswerModel answer;
  final VoidCallback onTap;
  final bool isSelected;
  final bool disabled;

  AnswerWidget({
    required this.answer,
    required this.onTap,
    this.isSelected = false,
    this.disabled = false,
  });

  Color get _selectedColorRight =>
      answer.isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      answer.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      answer.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      answer.isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      answer.isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => answer.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      child: IgnorePointer(
        ignoring: disabled,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: isSelected ? _selectedColorCardRight : AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.fromBorderSide(
                BorderSide(
                    color: isSelected
                        ? _selectedBorderCardRight
                        : AppColors.border),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(answer.title,
                        style: isSelected
                            ? _selectedTextStyleRight
                            : AppTextStyles.body),
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: isSelected ? _selectedColorRight : AppColors.white,
                      border: Border.fromBorderSide(BorderSide(
                          color: isSelected
                              ? _selectedBorderRight
                              : AppColors.border)),
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: isSelected
                        ? Icon(
                            _selectedIconRight,
                            size: 16,
                            color: AppColors.white,
                          )
                        : null,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/widgets.dart';

class ChallengeController {
  final currentPageNotifier = ValueNotifier<int>(1);

  int rightAnswersAmount = 0;

  int get currentPage => currentPageNotifier.value;

  set currentPage(int value) => currentPageNotifier.value = value;
}

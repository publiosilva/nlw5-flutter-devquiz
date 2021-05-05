import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import 'home_controller.dart';
import 'home_state.dart';
import 'widgets/appbar/app_bar_widget.dart';
import 'widgets/level_button/level_button_widget.dart';
import 'widgets/quiz_card/quiz_card_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.success) {
      return Scaffold(
        appBar: AppBarWidget(
          user: controller.user!,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Container(
                height: 34,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    LevelButtonWidget(
                      label: 'Fácil',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    LevelButtonWidget(
                      label: 'Médio',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    LevelButtonWidget(
                      label: 'Difícil',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    LevelButtonWidget(
                      label: 'Perito',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: controller.quizzes!
                      .map((e) => QuizCardWidget(
                            title: e.title,
                            completed:
                                '${e.questionAnswered} de ${e.questions.length}',
                            percent: (e.questionAnswered / e.questions.length),
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(AppColors.darkGreen),
          ),
        ),
      );
    }
  }
}

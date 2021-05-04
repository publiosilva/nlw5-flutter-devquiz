import 'package:DevQuiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:DevQuiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
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
                children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

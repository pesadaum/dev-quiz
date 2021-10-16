import 'package:dev_quiz/home/widgets/app_bar.dart';
import 'package:dev_quiz/home/widgets/level_button/level_button.dart';
import 'package:dev_quiz/home/widgets/quiz_card/quiz_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 30.0,
          horizontal: 15.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButton(label: 'Fácil'),
                LevelButton(label: 'Médio'),
                LevelButton(label: 'Difícil'),
                LevelButton(label: 'Perito'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: [
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

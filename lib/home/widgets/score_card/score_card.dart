import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/widgets/chart/chart.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.border)),
      height: 136.0,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Chart(),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Vamos começar',
                    style: AppTextStyles.heading,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text('Complete os desafios e avance em conhecimento',
                      style: AppTextStyles.body)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

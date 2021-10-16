import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButton extends StatelessWidget {
  final String label;

  LevelButton({@required this.label})
      : assert(
          ["Fácil", "Médio", "Difícil", "Perito"].contains(label),
        );

  final config = {
    "Fácil": {
      "buttonColor": AppColors.levelButtonFacil,
      "buttonBorderColor": AppColors.levelButtonBorderFacil,
      "buttonFontColor": AppColors.levelButtonTextFacil,
    },
    "Médio": {
      "buttonColor": AppColors.levelButtonMedio,
      "buttonBorderColor": AppColors.levelButtonBorderMedio,
      "buttonFontColor": AppColors.levelButtonTextMedio,
    },
    "Difícil": {
      "buttonColor": AppColors.levelButtonDificil,
      "buttonBorderColor": AppColors.levelButtonBorderDificil,
      "buttonFontColor": AppColors.levelButtonTextDificil,
    },
    "Perito": {
      "buttonColor": AppColors.levelButtonPerito,
      "buttonBorderColor": AppColors.levelButtonBorderPerito,
      "buttonFontColor": AppColors.levelButtonTextPerito,
    },
  };

  Color get buttonColor => config[label]['buttonColor'];
  Color get buttonBorderColor => config[label]['buttonBorderColor'];
  Color get buttonFontColor => config[label]['buttonFontColor'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(28.0),
        border: Border.fromBorderSide(
          BorderSide(color: buttonBorderColor),
        ),
      ),
      child: Text(
        label,
        style: GoogleFonts.notoSans(
          color: buttonFontColor,
          fontSize: 13.0,
        ),
      ),
    );
  }
}

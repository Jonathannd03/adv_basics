import 'package:flutter/material.dart';

class QuizQuestion {
  const QuizQuestion(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> getshuffeldAnswers(){
    final shuffeldList = List.of(answer);
    shuffeldList.shuffle();
    return shuffeldList;
  }
}

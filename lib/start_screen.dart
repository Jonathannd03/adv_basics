import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(
          height: 200,
        ),
        Opacity(
          opacity: 0.5,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text('Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            )),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              textStyle: const TextStyle(
                fontSize: 15,
              ),
              shape: null,
            ),
            onPressed: () {
              startQuiz();
            },
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white
              ),
            label: const Text(
              'Start',
              style: TextStyle(
                color: Colors.white,
              ),
            ))
      ]),
    );
  }
}

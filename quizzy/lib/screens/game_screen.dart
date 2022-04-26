import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy/components/const.dart';

import '../components/option.dart';
import '../components/question.dart';
import '../models/quiizbrain.dart';

var score = 0;
var questionIndex = 0;

class GameQuiz extends StatefulWidget {
  const GameQuiz({Key? key}) : super(key: key);

  @override
  State<GameQuiz> createState() => _GameQuizState();
}

class _GameQuizState extends State<GameQuiz> {
  bool answerSelected = false;
  bool endOfGame = false;
  Color textColor = const Color(0xff5472EC);
  Color textColor2 = Colors.white;

  Color answerColor = Colors.white;

  nextQuestion() {
    if (questionIndex < question.length - 1) {
      setState(() {
        questionIndex++;
      });
    }
    if (questionIndex == question.length) {
      Navigator.pushNamed(context, '/result');

      setState(() {
        endOfGame = true;
      });
    }
  }

  correctAnswer(bool correct) {
    if (correct) {
      setState(() {
        score++;
        if (questionIndex + 1 == question.length) {
          Navigator.pushNamed(context, '/result');
        } else {
          questionIndex++ + 1;
        }
      });
    } else {
      setState(() {
        if (questionIndex + 1 == question.length) {
          Navigator.pushNamed(context, '/result');
        } else {
          questionIndex++ + 1;
        }
      });
    }
  }

  prevQuestion() {
    if (questionIndex > 0) {
      setState(() {
        questionIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const Icon(
                        Icons.highlight_off,
                        size: 45,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      // color: Colors.white70,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white70,
                        width: 3,
                      ),
                      // borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "${questionIndex + 1}".toString(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 30,
                          color: colorWhite,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      // color: Colors.white70,

                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.white70,
                        width: 3,
                      ),
                      // borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.favorite,
                          color: colorWhite,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          score.toString(),
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            color: colorWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/flame-vr-geography.png',
                alignment: Alignment.center,
                width: 300,
                height: 250,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                'question ${questionIndex + 1} of ${question.length}',
                style: fontStyle,
              ),
            ),
            Question(
              question[questionIndex]['question'].toString(),
            ),
            const SizedBox(height: 25),
            ...(question[questionIndex]['answer'] as List<Map<String, Object>>)
                .map((answer) {
              return Expanded(
                child: ButtonOptions(
                    answer: answer['option'].toString(),
                    colorAnswer: answerColor,
                    checkAnswer: () => correctAnswer(answer['scores'] as bool),
                    colorText: const Color(0xff5573ED)),
              );
            }).toList(),
            Row(
              children: [
                GestureDetector(
                  onTap: prevQuestion,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const Icon(
                      Icons.arrow_back,
                      color: colorWhite,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(width: 300),
                GestureDetector(
                  onTap: nextQuestion,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: colorWhite,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

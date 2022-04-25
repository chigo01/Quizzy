import '../components/const.dart';
import 'Package:flutter/material.dart';
import 'game_screen.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  //resetting of the questions
  resetQuestion() {
    setState(() {
      questionIndex = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: primaryColor,
      child: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 250),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MyText(
                      text: 'Thanks for playing',
                      myFont: FontWeight.bold,
                      fontSize: 30,
                      myColor: Color(0xFF2F2F2F)),
                  const SizedBox(
                    height: 20,
                  ),
                  const MyText(
                    text: 'Your score is :',
                    myFont: FontWeight.bold,
                    fontSize: 30,
                    myColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyText(
                    text: score.toString(),
                    myFont: FontWeight.bold,
                    fontSize: 100,
                    myColor: Colors.yellow,
                  ),
                  if (score <= 5)
                    const MyText(
                      text: 'You need to practice more',
                      myFont: FontWeight.bold,
                      fontSize: 27,
                      myColor: Colors.redAccent,
                    ),
                  if (score >= 6 && score < 13)
                    MyText(
                      text: 'You did well'.toUpperCase(),
                      myFont: FontWeight.bold,
                      fontSize: 30,
                      myColor: Colors.green,
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: const Color.fromARGB(136, 87, 65, 6),
                maximumSize: const Size.fromHeight(100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                resetQuestion();
                Navigator.pushNamed(context, '/gamePlay');
              },
              child: const MyText(
                text: 'Play Again',
                myFont: FontWeight.bold,
                fontSize: 40,
                myColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class MyText extends StatelessWidget {
  const MyText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.myFont,
    required this.myColor,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final FontWeight myFont;
  final Color myColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: myFont,
        fontSize: fontSize,
        color: myColor,
      ),
    );
  }
}

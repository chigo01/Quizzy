import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonOptions extends StatelessWidget {
  const ButtonOptions({
    Key? key,
    //  required this.colorAnswer,
    required this.answer,
    required this.checkAnswer,
    required this.colorAnswer,
    required this.colorText,
  }) : super(key: key);
  final String answer;
  final VoidCallback checkAnswer;
  final Color colorAnswer;
  final Color colorText;
  // final Color colorAnswer;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: checkAnswer,
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(7),
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colorAnswer,
          ),
          width: 300,
          height: 60,
          child: Text(
            answer,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 25.7,
                color: colorText,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

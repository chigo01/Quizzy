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
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 1.26,
          child: Text(
            answer,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 20.8,
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

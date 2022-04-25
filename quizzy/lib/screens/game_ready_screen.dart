import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/const.dart';

class GameReady extends StatefulWidget {
  const GameReady({Key? key}) : super(key: key);

  @override
  State<GameReady> createState() => _GameReadyState();
}

class _GameReadyState extends State<GameReady> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: primaryColor,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
                ],
              ),
              const SizedBox(
                height: 150,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/business-3d-stack-of-different-books.png',
                  alignment: Alignment.center,
                  width: 300,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  'Ready?',
                  style: GoogleFonts.balooBhaina2(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffdbcccc),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Let\'s start the game!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Do you feel confident? Here you\'ll challenge '
                  'one of our most difficult travel questions!',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/gamePlay');
                  },
                  child: Container(
                    width: 370,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      // border: Border.all(
                      color: const Color(0xffFFFFFF),
                      // //  width: 2,
                      // ),
                    ),
                    child: const Center(
                      child: Text(
                        'Game',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          wordSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}

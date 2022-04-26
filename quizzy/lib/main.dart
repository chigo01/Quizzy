import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizzy/screens/game_ready_screen.dart';
import 'package:quizzy/screens/game_screen.dart';
import 'package:quizzy/screens/home_screen.dart';
import 'package:quizzy/screens/result.dart';

void main() {
  runApp(const Quizzy());
  //WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
  ]);
}

class Quizzy extends StatelessWidget {
  const Quizzy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Quizzy',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/gameReady': (context) => const GameReady(),
          '/gamePlay': (context) => const GameQuiz(),
          '/result': (context) => const Result(),
        });
  }
}

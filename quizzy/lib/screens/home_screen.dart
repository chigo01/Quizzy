import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy/screens/game_ready_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: prefer_const_literals_to_create_immutables
          SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    //   shape:  BoxShape.circle,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Color(0xffB195D6),
                    size: 30,
                  ),
                ),
                // const SizedBox(width: 20),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    //   shape:  BoxShape.circle,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Color(0xffB195D6),
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Let\'s play',
                    style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffF55F7A),
                      ),
                    ),
                  ),
                  Text('Be the first!',
                      style: GoogleFonts.balooBhaina2(
                        textStyle: const TextStyle(
                          color: Color(0xffdbcccc),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 1,
                        ),
                      )),
                ]),
          ),
          const SizedBox(height: 40),
          Stack(
            //stack widget in order to wrap widget
            //  clipBehavior: Clip.antiAliasWithSaveLayer,
            alignment: Alignment.topCenter,
            children: [
              //const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.only(bottom: 20),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 550,
                width: double.infinity,
                decoration: const BoxDecoration(
                    //color: Color(0xff497CEF),
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffB195D6),
                        Color(0xff5472EC),
                        //Color(0xff18AAF9),
                      ],
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 190),
                      child: Text(
                        'Play',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Text(
                        'QUIZZY',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/gameReady');
                      },
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 15,
                            ),
                            child: const Icon(
                              Icons.play_circle_filled,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              'GO ON',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -0,
                left: -13,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 400),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/business-3d-red-opened-book.png',
                        width: 200,
                        height: 150,
                        fit: BoxFit.contain,
                        // semanticLabel: 'QUIZ',
                        // scale: 1000,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

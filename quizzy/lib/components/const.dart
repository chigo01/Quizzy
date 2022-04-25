import 'package:flutter/material.dart';

const primaryColor = BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: Colors.black,
      blurRadius: 10,
      // spreadRadius: -5,
    ),
  ],
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xffB195D6),
      Color(0xff5573ED),
    ],
  ),
);


 const Color colorWhite = Colors.white;
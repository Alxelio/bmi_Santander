import 'package:flutter/material.dart';
import 'package:bmi_santander/constants_textstyle.dart';
import 'package:bmi_santander/person.dart';

void main(){
  runApp(myApp(),);
}

class myApp extends StatelessWidget {
  //const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Person(),
    );
  }
}


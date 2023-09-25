import 'package:flutter/material.dart';

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


class Person extends StatefulWidget {
  Person({ @required this.namee, @required this.weightt, @required this.heightt });

  String? namee;
  double? weightt;
  double? heightt;

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        leading: Icon(Icons.account_circle_rounded),
        leadingWidth: 100,
        actions: [Icon(Icons.refresh,),],
      ),

      body: SingleChildScrollView(),
    );
  }
}

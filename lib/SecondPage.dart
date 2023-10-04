import 'package:flutter/material.dart';
import 'package:bmi_santander/Functions.dart';
import 'package:bmi_santander/SecondPage.dart';

class SecondPagee extends StatefulWidget {

  final double result;

  SecondPagee({required this.result});

  @override
  State<SecondPagee> createState() => _SecondPageeState();
}

class _SecondPageeState extends State<SecondPagee> {
  @override
  Widget build(BuildContext context) {
    var result;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle_rounded),
          leadingWidth: 100,
          title: Text("Information",),
          centerTitle: true,
          actions: [IconButton(onPressed: reset, icon: Icon(Icons.refresh),)],
          backgroundColor: Colors.deepPurple[500],
          elevation: 25.0,
          toolbarOpacity: 0.95,
        ),

        body:
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [0.25, 0.45, 0.75],
              colors: [ Color.fromARGB(255, 50, 27, 147),
                Color.fromARGB(255, 67, 56, 182),
                Color.fromARGB(255, 87, 63, 217),
              ],
            ),
          ),


          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(flex: 6,
                child: Container(
                  //height: 420,
                  width: double.infinity,
                  //color: Colors.amberAccent,
                  child: Text(" "),
                ),
              ),
              Expanded(flex: 1,
                child: Container(
                  //height: 30,
                  //color: Colors.red,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 70.0)
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Go Back",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

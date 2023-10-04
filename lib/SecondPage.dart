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
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                color: Colors.amberAccent,
                child: Text(" Here "),
              ),
              Container(
                color: Colors.red,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
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
            ],
          ),

        ),
      ),
    );
  }
}

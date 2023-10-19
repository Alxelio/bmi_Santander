import 'dart:io';
import 'package:bmi_santander/person.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:bmi_santander/functions.dart';

class SecondPage extends StatefulWidget {

  final List<String> resultsList;
  SecondPage(this.resultsList);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final person = Person();
  String result = "";

  Future<void> updateResult(double weight, double height) async {
    String newResult = cauculus(weight, height);
    setState(() {
      result = newResult;
    });
  }


  @override
  Widget build(BuildContext context) {

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

              Expanded(
                flex: 6,
                child: Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: widget.resultsList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          widget.resultsList[index],
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              Expanded(flex: 1,
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          double weight = double.tryParse(weightt!.text) ?? 0.0;
                          double height = double.tryParse(heightt!.text) ?? 0.0;

                          updateResult(weight, height);

                        });
                      },
                      child: const Text("Calculate"),
                    ),
                  ),
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



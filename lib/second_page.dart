import 'dart:io';
import 'package:bmi_santander/person.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:bmi_santander/functions.dart';

class SecondPage extends StatefulWidget {
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

  static String cauculus(weight, height) {
    //double weight = double.tryParse(weightt!.text) ?? 0.0;
    //double height = double.tryParse(heightt!.text) ?? 0.0;


    /*
    * For the reason which in the functions.dart the class CalculatorFunctions isn't in the statefullWidget,
    * In fact, I was not allowed to change indeed the state of the variable result for other parts of code.
    * So I changed the logic of this code as I did and everyone can see it below.
    */
    if (weight <= 0 || height <= 0) {
      return 'Invalid input. Please enter valid values.';
    }

    double bmi = weight / ((height) * (height));

    if (bmi < 16.0) {
      return 'Your Body Mass Index is ${bmi.toStringAsFixed(2)} - Severe Thinness Classification \n';
    } else if (bmi >= 16.0 && bmi < 17.0) {
        return 'Your Body Mass Index is ${bmi.toStringAsFixed(2)} - Moderate Thinness Classification \n';
      } else if (bmi >= 17.0 && bmi < 18.5) {
            return 'Your Body Mass Index is ${bmi.toStringAsFixed(2)} - Light Thinness Classification \n';
        } else if (bmi >= 18.5 && bmi < 25.0) {
            return 'Your Body Mass Index is ${bmi.toStringAsFixed(2)} - Healthy Classification \n';
          } else if (bmi >= 25.0 && bmi < 30.0) {
            return 'Your Body Mass Index is ${bmi.toStringAsFixed(2)} - Overweight Classification \n';
            } else if (bmi >= 30.0 && bmi < 35.0) {
              return 'Your Body Mass Index is ${bmi.toStringAsFixed(2)} - Grade 1 Obesity Classification \n';
              } else if (bmi >= 35.0 && bmi < 40.0) {
                return 'Your Body Mass Index is ${bmi.toStringAsFixed(2)} - Grade II Obesity (Severe) Classification \n';
                } else if (bmi >= 40.0) {
                  return 'Your Body Mass Index is ${bmi.toStringAsFixed(2)} - Grade III Obesity (Morbid) Classification \n';
                  } else {
                    return 'Your Body Mass Index is ${bmi.toStringAsFixed(2)} - Invalid inputs, like negative values or stuff like that';
        }
        return bmi.toString();
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

              Expanded(flex: 6,
                child: Container(margin: EdgeInsets.only(right: 20, left: 20),
                  //color: Colors.blue,
                  //height: 420,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      result.isNotEmpty ? result : "Press the Calculate button to appear the result",
                      style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                      ),
                    ),
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



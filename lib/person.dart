import 'package:bmi_santander/functions.dart';
import 'package:bmi_santander/second_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_santander/constants_textstyle.dart';

TextEditingController? namee = TextEditingController();
TextEditingController? weightt = TextEditingController();
TextEditingController? heightt = TextEditingController();
String informationn = 'Give some Informations about you, please';

class Person extends StatefulWidget {
  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("BMI Calculator"),
          centerTitle: true,
          leading: const Icon(Icons.account_circle_rounded),
          leadingWidth: 100,
          actions: const [ IconButton(onPressed: reset, icon: Icon(Icons.refresh,))],
          backgroundColor: Colors.deepPurple[500],
          elevation: 25,
          toolbarOpacity: 0.95,
        ),

        //drawer: Drawer(),

        body: Container(
            decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [0.2, 0.7, 0.95],
              colors: [ Colors.deepPurpleAccent,
                Colors.deepPurple,
                Colors.blue,
              ],
            ),
          ),
          child: ListView(
            children: [
              Container(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Person icon
                    const Icon(Icons.person, size: 200.0, color: Colors.white, ),

                    const SizedBox(height: 20.0),

                    //Name
                    TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.name,

                      //From Inside Label
                      style: kTextStyle,

                      //From Outside Label
                      decoration: kInputDecorationNamee,

                      controller: namee,
                    ),

                    const SizedBox(height: 20.0,),

                    //Weight
                    TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,

                      //From Inside Label
                      style: kTextStyle,

                      //From Outside Label
                      decoration: kInputDecorationWeightt,

                      controller: weightt,
                    ),

                    const SizedBox(height: 20.0,),

                    //Height
                    TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,

                      style: kTextStyle,

                      decoration: kInputDecorationHeightt,

                      controller: heightt,
                    ),

                    //Elevated Button
                    Padding(
                      padding: const EdgeInsets.only( top: 15.0, bottom: 15.0,),
                      child: Container(
                        height: 70.0,
                        child: ElevatedButton(
                          child: const Text("Confirm",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return SecondPage();
                                }),
                            );
                          }),
                      ),
                    ),

                    const SizedBox(height: 20,),

                    //Information
                    Text(
                      informationn,
                      textAlign: TextAlign.center,
                      style: kTextStyle,
                    ),

                  ],
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



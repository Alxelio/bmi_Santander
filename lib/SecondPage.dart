import 'package:flutter/material.dart';
import 'package:bmi_santander/Functions.dart';

class SecondPagee extends StatefulWidget {
  //const SecondPagee({super.key});

  @override
  State<SecondPagee> createState() => _SecondPageeState();
}

class _SecondPageeState extends State<SecondPagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Container(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Go Back",
            ),
          ),
        ),
      ),
    );
  }
}

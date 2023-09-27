import 'package:flutter/material.dart';

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
        title: Text("Information"),
        actions: [Icon(Icons.refresh),],
        backgroundColor: Colors.deepPurple[500],
        elevation: 25.0,
        toolbarOpacity: 0.95,
      ),

      body: Container(
      padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0,),
      child: ElevatedButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text("Go Back",),),
      )
    );
  }
}

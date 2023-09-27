import 'package:bmi_santander/SecondPage.dart';
import 'package:flutter/material.dart';
import 'package:bmi_santander/Constants_TextStyle.dart';

TextEditingController? namee = TextEditingController();
TextEditingController? weightt = TextEditingController();
TextEditingController? heightt = TextEditingController();


class Person extends StatefulWidget {

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
        actions: [ IconButton(onPressed: (){}, icon: Icon(Icons.refresh,))],
        backgroundColor: Colors.deepPurple[500],
        elevation: 25,
        toolbarOpacity: 0.95,
      ),

      //drawer: Drawer(),

      body: Container(
        decoration: BoxDecoration(
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

        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Person icon
              Icon(Icons.person, size: 200.0, color: Colors.white, ),

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

              SizedBox(height: 15.0,),

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

              SizedBox(height: 15.0,),

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
                padding: EdgeInsets.only( top: 15.0, bottom: 15.0,),
                child: Container(
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){return SecondPagee();}));
                    },
                    child: Text("Calculate",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              //Information
              Text(
                "Information",
                textAlign: TextAlign.center,
                style: kTextStyle,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

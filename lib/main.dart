import 'package:flutter/material.dart';

TextEditingController? namee = TextEditingController();
TextEditingController? weightt = TextEditingController();
TextEditingController? heightt = TextEditingController();

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
  //Person({ @required this.namee, @required this.weightt, @required this.heightt });


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
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),

                //From Outside Label
                decoration: InputDecoration(
                  hintText: "Enter your First and Last names please!",
                  labelText: "Completed Name",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                controller: namee,
              ),

              //Weight
              TextFormField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,

                //From Inside Label
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),

                //From Outside Label
                decoration: InputDecoration(
                  hintText: "Enter your Weight",
                  labelText: "Weight",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                controller: weightt,

              ),

              //Height
              TextFormField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,

                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),

                decoration: InputDecoration(
                  hintText: "Enter your Height",
                  labelText: "Height",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                controller: heightt,

              ),

              //Elevated Button
              Container(
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Calculate",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ),

              //Information
                Text(
                  "Information",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}

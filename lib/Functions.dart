import 'package:bmi_santander/Person.dart';
import 'dart:io';

void reset (){
  namee?.text = " ";
  weightt?.text = " ";
  heightt?.text = " ";

}

double cauculus() {
  double weight = double.tryParse(weightt!.text) ?? 0.0;
  double height = double.tryParse(heightt!.text) ?? 0.0;

  if (weight <= 0 || height <= 0) {
    informationn = 'Invalid input. Please enter valid values.';
    return 0.0;
  }

  double bmi = weight / ((height / 100) * (height / 100));
  return bmi;
}





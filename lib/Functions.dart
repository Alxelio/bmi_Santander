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

  if(bmi < 16.0){
    stdout.write('Your Body Mass Index is ${bmi.toStringAsFixed(2)} - ');
    stdout.write("Severe Thinness Classification \n");
  } else if(bmi >= 16.0 && bmi < 17.0){
    stdout.write('Your Body Mass Index is ${bmi.toStringAsFixed(2)} - ');
    stdout.write("Moderate Thinness Classification \n");
  } else if(bmi >= 17.0 && bmi < 18.5){
    stdout.write('Your Body Mass Index is ${bmi.toStringAsFixed(2)} - ');
    stdout.write("Light Thinness Classification \n");
  } else if(bmi >= 18.5 && bmi < 25.0){
    stdout.write('Your Body Mass Index is ${bmi.toStringAsFixed(2)} - ');
    stdout.write("Healthy Classification \n");
  } else if(bmi >= 25.0 && bmi < 30.0){
    stdout.write('Your Body Mass Index is ${bmi.toStringAsFixed(2)} - ');
    stdout.write("Overweight Classification \n");
  } else if(bmi >= 30.0 && bmi < 35.0){
    stdout.write('Your Body Mass Index is ${bmi.toStringAsFixed(2)} - ');
    stdout.write("Grade 1 Obesity Classification \n");
  } else if(bmi >= 35.0 && bmi < 40.0){
    stdout.write('Your Body Mass Index is ${bmi.toStringAsFixed(2)} - ');
    stdout.write("Grade II Obesity (Severe) Classification \n");
  } else if(bmi >= 40.0) {
    stdout.write('Your Body Mass Index is ${bmi.toStringAsFixed(2)} - ');
    stdout.write("Grade III Obesity (Morbid) Classification \n");
  } else {
    stdout.write('Your Body Mass Index is ${bmi.toStringAsFixed(2)} - ');
    stdout.write("Invalid inputs, like negative values or stuff like that");
  }

  return bmi;
}





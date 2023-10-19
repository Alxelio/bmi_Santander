import 'package:bmi_santander/person.dart';
import 'dart:io';
import 'package:flutter/material.dart';

void reset (){
  namee?.text = " ";
  weightt?.text = " ";
  heightt?.text = " ";

}

String cauculus(weight, height) {

  if (weight <= 0 || height <= 0) {
    return 'Invalid input. Please enter valid values \n';
  }

  double bmi = weight / ((height) * (height));

  if (bmi < 16.0) {
    return 'Your weight is $weight and your height is $height, so your Body Mass Index is ${bmi.toStringAsFixed(2)} - Severe Thinness Classification \n';
  } else if (bmi >= 16.0 && bmi < 17.0) {
    return 'Your weight is $weight and your height is $height, so your Body Mass Index is ${bmi.toStringAsFixed(2)} - Moderate Thinness Classification \n';
  } else if (bmi >= 17.0 && bmi < 18.5) {
    return 'Your weight is $weight and your height is $height, so your Body Mass Index is ${bmi.toStringAsFixed(2)} - Light Thinness Classification \n';
  } else if (bmi >= 18.5 && bmi < 25.0) {
    return 'Your weight is $weight and your height is $height, so your Body Mass Index is ${bmi.toStringAsFixed(2)} - Healthy Classification \n';
  } else if (bmi >= 25.0 && bmi < 30.0) {
    return 'Your weight is $weight and your height is $height, so your Body Mass Index is ${bmi.toStringAsFixed(2)} - Overweight Classification \n';
  } else if (bmi >= 30.0 && bmi < 35.0) {
    return 'Your weight is $weight and your height is $height, so your Body Mass Index is ${bmi.toStringAsFixed(2)} - Grade 1 Obesity Classification \n';
  } else if (bmi >= 35.0 && bmi < 40.0) {
    return 'Your weight is $weight and your height is $height, so your Body Mass Index is ${bmi.toStringAsFixed(2)} - Grade II Obesity (Severe) Classification \n';
  } else if (bmi >= 40.0) {
    return 'Your weight is $weight and your height is $height, so your Body Mass Index is ${bmi.toStringAsFixed(2)} - Grade III Obesity (Morbid) Classification \n';
  } else {
    return 'Your weight is $weight and your height is $height, so your Body Mass Index is ${bmi.toStringAsFixed(2)} - Invalid inputs, like negative values or stuff like that';
  }

  return bmi.toString();
}

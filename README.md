# bmi_santander
# /home/alunime/snap/flutter/common/flutter/bin/cache/dart-sdk


git@github.com:Alxelio/bmi_santander.git

git init
git add -A
git commit -s -m "Add Initial Commit "
# git remote add origin https://git@github.com:Alxelio/bmi_santander.git - sometimes it is necessary
git push -u origin main 

# Number 1
import 'package:flutter/material.dart';

Configuring the AppBar(); with leading, title and actions.

# Number 2
I wrapped the icon.refresh with the IconButton Widget. I also wrapped the SingleChildScrollview Widget with a Container Widget.
And then, I placed the BoxDecoration and LinearGradient Widgets to customize the software.

# Number 3
I has changed all the TextFormField Widgets, as well as colors, fontsize, fontweight and so on. I took this approach to customize the button too.

# Number 4
Improved the code with some components.

# Number 5
I made the second page to house the result of calculus for BMI - (Body Mass Index) and did some more components as well.

# Number 6
I made a reset Function to clean all the variables. And for this, I placed a Functions file as component.

# Number 7
It was done some improvements and changes.

# Number 8
I placed the calculus function and put the background color in the second page as well.

# Number 9
I renamed all files and classes just to follow the standard / default which ones required in Flutter. I also tried to make some improvements.

# Number 10
For the reason which in the functions.dart the class CalculatorFunctions isn't in the statefullWidget, in fact, I was not allowed to change indeed the state of the variable result for other parts of code. 
So I changed the logic of this code as I did and everyone can see it below.

# Number 11
I replaced the function cauculus() into the functions.dart file. I added a ListView.builder for scrolling so much as it needs and then, the result is shown as a list.
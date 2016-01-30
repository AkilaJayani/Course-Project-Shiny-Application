# Course-Project-Shiny-Application

This app takes as input weight and horsepower of a car and predicts the miles per gallon (MPG). Prediction model is generated using the mtcars data set available in R. mtcars data set has been extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).

Description of the variables in the dataset are as follows

1. mpg	- Miles/(US) gallon 
2. cyl	- Number of cylinders 
3. disp	- Displacement (cu.in.) 
4. hp	- Gross horsepower 
5. drat	- Rear axle ratio 
6. wt	- Weight (lb/1000) 
7. qsec	- 1/4 mile time 
8. vs	- V/S 
9. am	- Transmission (0 = automatic, 1 = manual) 
10. gear	- Number of forward gears 
11. carb	- Number of carburetors 

After careful data analysis it is clear that only the covariates wt(weight) and hp(horsepower) are needed to predict MPG.

##Basic Function of the App

When the user enters the weight and horsepower of a car in the numeric fields and press the submit button the app displayes the values entered by the user and the MPG prediction.

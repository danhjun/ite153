#! /usr/bin/bash

read -p "Enter student name -> " stu_name
read -p "Enter 1st exam grade -> " first_grade
read -p "Enter 2nd exam grade -> " second_grade
read -p "Enter 3rd exam grade -> " third_grade

let avg_grade=$((($first_grade + $second_grade + $third_grade)/3))
echo "The three test grades for $stu_name are $first_grade, $second_grade, and $third_grade. The final average is $avg_grade."

# 4.2 Numbers, Letters, and Variable Assignment

## Release 1

1. What does puts do?

   Answer: Puts returns nil and prints the output to the console with a new line.

2. What is an integer? What is a float?

   Answer: Numbers without decimal point are called integers. Numbers with decimal point are usually called float-point numbers, short for floats.

3. What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

   Answer: The integer division will give the answer with rounding down if the result is float, whereas the float division will give the exact float result. 

   Programming is to tell computer how to do something by your commands which is written by some sort of programming language that computer will understand. You input data, use methods, do calculation, and integrate all the information to accomplish a task through writing the code. You will break down the task into smaller jobs and put all together to make computer execute the code you write and give you the final result or allow you to make some sort of software.

## Release 2

1. Hours in a day

```
  hours_in_a_day = 24

  days_in_a_year = 365

  puts hours_in_a_day * days_in_a_year

```

2. Minutes in a decade

```
  hours_in_a_year = 24 * 365

  minutes_in_a_hour = 60

  minutes_in_a_year = hours_in_a_year * minutes_in_a_hour

  puts minutes_in_a_year * 10
```

## Reflection

1. How does Ruby handle addition, subtraction, multiplication, and division of numbers?

   Answer: Ruby uses '+' for addition, '-' for subtraction, '*' for multiplication, and '/' for division.

2. What is the difference between integers and floats?

   Answer: Integers don't have the decimal point, whereas floats have decimal point.

3. What is the difference between integer and float division?

   Answer: Integer division will round down if the result is a float, whereas float division will give the normal float result.

4. What are strings? Why and when would you use them?

   Answer: Strings are the group of punctuation, digits, symbols, and spaces in them, more than just letters. Also string may not contain anything which is empty string. 

   Since strings have a lot of methods and are very useful for naming something in the program, you will choose to use strings all the time in your program.

   When you want to manipulate some characters or letters in your program, you may use strings.

5. What are local variables? Why and when would you use them?

   Answer: Local variables are the variables created inside the methods and cannot leave, if they leave, we will have error message when debugging the program.

   We want to make different scopes of variables that different variables may not disturb one another and have their own functions in the program so we introduce the local variables that is different from global variables. 

   If we want to create our own methods with several variables, we need define local variables so the method cannot be changed by other variables outside this method.

6. How was this challenge? Did you get a good review of some of the basics?

   Answer: I like this challenge that introduces the test-driven programming and Rspec for testing programming. 
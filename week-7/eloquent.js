// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var food = "dumplings"

console.log("My favorite food is " + food + ".")

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

prompt("What is your favorite food?")
console.log("Hey! That's my favorite too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle
var total = "";
for (i=0;i<7;i++) {
  var str = "#";
  total += str;
  console.log(total);
}

// FizzBuzz
for(i = 1; i <=100; i++) {
  if(i % 3 === 0 && i % 5 != 0) {
    console.log("Fizz");
  } else if(i % 5 === 0 && i % 3 !=0) {
    console.log("Buzz");
  } else if(i % 15 === 0) {
    console.log("FizzBuzz");
  } 
  else {console.log(i);}
}

// Chess Board

var size = 8; 

var chessBoard = "";

for (var i = 0; i < size; i++) {   
  for (var j = 0; j < size; j++) {
    if ((i + j) % 2 === 0)
      chessBoard += " ";
    else
      chessBoard += "#";
  }
  chessBoard += "\n";
}

console.log(chessBoard);





// Complete the `minimum` exercise.

var min = function(a, b) {
  if (a >= b) {
    return b;
  } else {return a;
  }
};

var find_min = min(90,20);
console.log(find_min);

// Data Structures: Objects and Arrays
// Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.

var me = ["Ting Wang", 31, "dumpling", "steamed bun", "noodle", "laugh"]


/*
Introduction

Did you learn anything new about JavaScript or programming in general?

A: Yes, I learn that JavaScript has nothing to do with programming language named Java. JavaScript is a script-based language without compilation of code. It is similar with Ruby in some ways. Also I learn that programming is about data structure and algorithsm. First you need to find what data structure to solve the problem and what type of method to implement these data structures.

Are there any concepts you feel uncomfortable with?

A: JavaScript is functional programming language. The function in JavaScript is a little bit abstract. 

Chapter 1

Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.

A: In Ruby, we use == to compare two things while in JavaScript, we use === to compare two things. In Ruby, the false value is nil or false, while in JavaScript, the false value are 0, false, NaN, null, and empty string. 
  We both use + or concat to concatenate two strings. Also the arithmetic operation is same.

Chapter 2

What is an expression?

A: A fragment of code that produces a value is called an expression.

What is the purpose of semicolons in JavaScript? Are they always required?

A: Semicolons means the termination of the expression. In some cases, the semicolons are necessary after the expression but some cases don't.

What causes a variable to return undefined?

A: If the variable has no value inside of it, it it will return undefined.

What does console.log do and when would you use it? What Ruby method(s) is this similar to?

A: console.log can execute the method or print the statement on console. When you want to execute JavaScript methods or customized methods or you want to print something on console, you may use console.log. In Ruby, print, puts, and p is similar to console.log.

Describe while and for loops

A: While loop is the very common loop structure in any programming languages. You put the condition after while, and check if the data still meet the requirement, if yes, just start the expressions inside while loop until the condition is false.
  For loop is shorter and more comprehensive than while loop, it is iterating every single element of the data structure. 

What other similarities or differences between Ruby and JavaScript did you notice in this section?

A: In JavaScript, the expression is ended with semicolons while in Ruby, they never use semicolons to terminate the expression.

Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file. 

Chapter 3

What are the differences between local and global variables in JavaScript?

A: local variable is defined inside function body and can only be modified inside the function, while global variable is defined outside function body and can be accessed by any method or function.

When should you use functions?

A: If you want to complete some tasks with the built-in commands limited to fulfill the goal, you may create your own functions.

What is a function declaration?

A: You declare the function by using var your_function = function(paramaters) {function body}; syntax. It is very clear and straightforward.

Chapter 4

What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]

A: When using dot, the part after the dot must be a valid variable name, and it directly names the property. When using square brackets, the expression between the brackets is evaluated to get the property name.  

What is a JavaScript object with a name and value property similar to in Ruby?

A: It is similar to the Hash in ruby since Ruby hash has key and value. Also it is accessed by using dot and after that adding the key name. In JavaScript, you also access the value property by using dot and after that adding the property name. 

Reflection
What are the biggest similarities and differences between JavaScript and Ruby?

A: The biggest similarity is that JavaScript and Ruby are both script-based language and they don' need to be compiled when running the code.
  The differences are some but the most difference is that JavaScript use very standard syntax of programming language in general, while Ruby's syntax is very simple and powerful. Besides the syntax, another difference is that Ruby's built-in commands are simpler than JavaScript.

Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
How do you feel about diving into JavaScript after reading these chapters?

A: Yes, I did some researches and made the comparison between Ruby and JavaScript, which helps me to review Ruby knowledge. I think the function, Hash, Array, and String concepts are solidified by reading through the JavaScript textbook. I think JavaScript is a very powerful language that is also very straightforward on syntax.

*/
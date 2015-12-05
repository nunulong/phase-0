 // JavaScript Olympics

// I paired [by myself, with: Gary Tso] on this challenge.

// This challenge took me [#] hours.


// Warm Up



// Bulk Up

var sarah = {
  name: "Sarah Hughes",
  sportEvent: "Ladies' Singles",
};

var michael = {
  name: "Michael Jordan",
  sportEvent: "Basketball",
};

var roger = {
  name: "Roger Federer",
  sportEvent: "Tennis",
};

var athletes = [sarah, michael, roger];
for(i = 0; i < athletes.length; i++) {
  athletes[i].win = function() {
    console.log(this.name + " won " + this.sportEvent + ".");
  };
}

sarah.win();
michael.win();
roger.win();

// Jumble your words

var reverseString = function(str) {
  return str.split("").reverse().join("");
};

console.log(reverseString("Hello"));

// 2,4,6,8

var evenNumber = function(arr) {
  var evenArray = [];
  for(i = 0; i < arr.length; i++) {
    if (arr[i] % 2 === 0) {
      evenArray.push(arr[i]); 
    }
  }
  return evenArray;
};

console.log(evenNumber([1,2,3,4,5,6,7,8,9,10,11,12,13,14]));
// "We built this city"

var Athlete = function (name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

/*

What JavaScript knowledge did you solidify in this challenge?

A: We solidify our object literals, which are name value pairs in curly braces. We also learned the difference between function expression and function declaration, which is essentially a function that is completely seprarte (which is the declaration), or the same code inside of a function(which is expression). 

What are constructor functions?

A: constructor functions that make many different objects of one type, sort of like ruby classes.

How are constructors different from Ruby classes (in your research)?

A: In javascript constructor that are any function that can create influence of object, whereas in Ruby, only classes create instances of objects, and they themselves have very specific syntax associated with them, such as special methods or properties. JavaScripte constructors have no such restrictions on syntax and have no specific methods or properties associated.

*/
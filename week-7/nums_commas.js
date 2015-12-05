// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

/*
write a function that takes a number 
then we split that number up into groups of 3 or less
then we join it all back up with Commas
return the joined string
*/

// Initial Solution

var commaSeparator = function(number) {
  var str = number.toString();
  if (str.length <= 3) {
    return parseInt(str);
  } else {
    var count = str.length;
    var arr = [];
    while(count > 0) {
      if(count < 3) {
        arr.push(str.slice(0, count));
        arr = arr.reverse().join(",");
        return arr;
        break;
      }
      arr.push(str.slice(count - 3, count));
      count -= 3;
    }
    arr = arr.reverse().join(",");
    return arr;
  }
};

console.log(commaSeparator(1));
console.log(commaSeparator(12));
console.log(commaSeparator(123));
console.log(commaSeparator(1234));
console.log(commaSeparator(12345));
console.log(commaSeparator(123456));
console.log(commaSeparator(1234567));
console.log(commaSeparator(12345678));
console.log(commaSeparator(123456789));
console.log(commaSeparator(1234567890));
// Refactored Solution

var commaSeparator = function(number) {
  var numberString = number.toString();
  if (numberString.length <= 3) {
    return number;
  } else {
    var count = numberString.length;
    var numberArray = [];
    while(count > 0) {
      if(count < 3) {
        numberArray.push(numberString.slice(0, count));
        result = numberArray.reverse().join(",");
        return result;
        break;
      }
      numberArray.push(numberString.slice(count - 3, count));
      count -= 3;
    }
    result = numberArray.reverse().join(",");
    return result;
  }
};

console.log(commaSeparator(1));
console.log(commaSeparator(12));
console.log(commaSeparator(123));
console.log(commaSeparator(1234));
console.log(commaSeparator(12345));
console.log(commaSeparator(123456));
console.log(commaSeparator(1234567));
console.log(commaSeparator(12345678));
console.log(commaSeparator(123456789));
console.log(commaSeparator(1234567890));

// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (commaSeparator instanceof Object),
  "The value of commaSeparator should be an Object.",
  "1. "
)

assert(
  typeof result === 'string',
  "The value of result should be a string.",
  "2. "
)

assert(
  (commaSeparator(1234) === '1,234'),
  "The result should be 1,234.",
  "3. "
)

assert(
  (commaSeparator(123) === 123),
  "The result should be 123.",
  "4. "
)

// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

A: I think I will break down the problem and find the built-in method. If I cannot find the method, I will create the function by my own since JavaScript doesn't have many built-in methods. 

What did you learn about iterating over arrays in JavaScript?

A: I use the index and while loop. Also I can use the for loop to iterate the array.

What was different about solving this problem in JavaScript?

A: Solving this problem is harder than using ruby since JavaScript doesn't have many built-in methods to use. I have to create the function by myself.

What built-in methods did you find to incorporate in your refactored solution?

A: I use slice, reverse, join, and push. Also I did some researches on splice and some other string and array built-in methods which are useful.

*/
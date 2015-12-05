// Pseudocode

// Define a function names total that accepts an array of numbers as an argument
    // Inside of the sunction create a variable named sum
    // Then I want to initialize a counter variable and set it equal to 0
    // Using that counter variable as a starting point, I want to loop through the array and for every indice it passes, add the number at that indice to the sum
    // Return the sum variable

// Define a function called mean that accepts an array of numbers as an argument
    // Inside of the sunction create a variable named sum
    // Then I want to initialize a counter variable and set it equal to 0
    // Using that counter variable as a starting point, I want to loop through the array and for every indice it passes, add the number at that indice to the sum
    // Return the sum divided by the length of the array (which is the total numbers that were in the array. This will provide us the average)

// Define a function called median that accepts an array of numbers as an argument
    // Create a variable and pass into it the array
    // Sort the array
    // If the array.length % 2 == 0 (If the length of the array is even, there will be 2 numbers that are those most middle numbers)
      // Create a variable and save the two most middle numbers to it.
      // Add those two numbers and save it to the exact same variable
      // Divide that number by 2
      // Return that number
    // Else return the middle number

// Solution to the pseudocode
// function total
var total = function(numberArray) {
  var sum = 0;
  for(i = 0; i < numberArray.length - 1; i++) {
    sum += numberArray[i];
  }
  return sum
};

console.log(total([1,2,3,4,5,6,7,8,9,0]));

// function mean

var mean = function(numberArray) {
  var sum = 0;
  for(i = 0; i < numberArray.length - 1; i++) {
    sum += numberArray[i];
  }
  return sum / numberArray.length;
};

console.log(mean([1,2,3,4,5,6,7,8,9,10]));

// function median
var median = function(numberArray) {
  numberArray.sort(function(a, b) {return a-b;});
  console.log(numberArray);
  var arrayLength = numberArray.length;
  if(arrayLength % 2 === 0) {
    var middleSum = numberArray[arrayLength / 2 - 1] + numberArray[arrayLength / 2];
    return middleSum / 2;
  } else {
    return numberArray[(arrayLength - 1) / 2];
  }
};

console.log(median([10,9,8,7,6,5,4,3,2,1]));
console.log(median([1,3,2,3,4,3,2,6,7,8,9,10]));
console.log(median([4,3,6,2,7,9,2,3,0,3,4,6]));
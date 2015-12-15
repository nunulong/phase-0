// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

// Pseudocode




// Initial Solution

function isFib(number){
  var prev = 0;
  var curr = 1;
  while(prev <= number){
    if(prev == number){
      return true;
    }
   curr = prev + curr;
   prev = curr - prev;
  }
return false;
}

console.log(isFib(8));
// Refactored Solution







// Reflection
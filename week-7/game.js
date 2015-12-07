// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Create a tic tac toe game
// Overall mission: win the game
// Goals: make three spots diagonal, horizontal, or vertical
// Characters: computer and you
// Objects: I refer to the source code from 'http://www.jsmadeeasy.com/javascripts/Games/Tic-Tac-Toe/index.htm', and I understand the code and just make some differences from the source code
// Functions: place the spot, restart game, check if someone win the game, check if the game is end, check if the spot is taken

// Pseudocode

// generate a board
// you place a spot with X
// computer randomly places a spot with o
// each step will check the available
// if there are available spot, place to the empty spot
// also check if the competitor has two spot almost diagonal, horizontal, or vertical, place the left spot to break it
// there should be combinations of win situations, and make sure check the win situation
// if the current situation belongs to win situation, you win or computer wins.
// who place three spots diagonal, horizontal, or vertical wins the game
// once the game is over, cannot place any spot
// restart the game

// Initial Code
      // these are the spot you will place on the board
      var x = "x.png";
      var o = "o.png";
      var empty = "empty.jpg";

      // win stands for if you win or computer wins, if win is 0 that means nobody wins.
      var win = 0;

      // nine spots, the value means who takes the spot, you is 1, computer is 2.
      var a = 0;
      var b = 0;
      var c = 0;
      var d = 0;
      var e = 0;
      var f = 0;
      var g = 0;
      var h = 0;
      var i = 0;

      // temp is the choice you make or computer makes
      var temp="";

      // ok is the status that means if it is ok to place the spot
      var ok = 0;

      // computer means if the computer has placed the spot, if not the value is 0
      var computer = 0;

      // choice is just the total choice you can make
      var choice = 9;

      // we need a random number to let the computer place the spot
      var randomNumber = 0;

      // comp is the choice you make
      var comp = 0;

      function logicOne() {
        if ((a == 1) && (b == 1) && (c == 1)) {
          win = 1;
        }
        if ((a == 1) && (d == 1) && (g == 1)) {
          win = 1;
        }
        if ((a == 1) && (e == 1) && (i == 1)) {
          win = 1;
        }
        if ((b == 1) && (e == 1) && (h == 1)) {
          win = 1;
        }
        if ((d == 1) && (e == 1) && (f == 1)) {
          win = 1;
        }
        if ((g == 1) && (h == 1) && (i == 1)) {
          win = 1;
        }
        if ((c == 1) && (f == 1) && (i == 1)) {
          win = 1;
        }
        if ((g == 1) && (e == 1) && (c == 1)) {
          win = 1;
        }
        if ((a == 2) && (b == 2) && (c == 2)) {
          win = 2;
        }
        if ((a == 2) && (d == 2) && (g == 2)) {
          win = 2;
        }
        if ((a == 2) && (e == 2) && (i == 2)) {
          win = 2;
        }
        if ((b == 2) && (e == 2) && (h == 2)) {
          win = 2;
        }
        if ((d == 2) && (e == 2) && (f == 2)) {
          win = 2;
        }
        if ((g == 2) && (h == 2) && (i == 2)) {
          win = 2;
        }
        if ((c == 2) && (f == 2) && (i == 2)) {
          win = 2;
        }
        if ((g == 2) && (e == 2) && (c == 2)) {
          win = 2;
        }
        if ((a != 0) && (b != 0) && (c != 0) && (d != 0) && (e != 0) && (f != 0) && (g != 0) && (h != 0) && (i != 0) && (win == 0)) {
          win = 3;
        }
      }

      function logicTwo() {
        if ((a == 1) && (b == 1) && (c == 0) && (temp == "")) {
          temp = "C";
        }
        if ((a == 1) && (b == 0) && (c == 1) && (temp == "")) {
          temp = "B";
        }
        if ((a == 0) && (b == 1) && (c == 1) && (temp == "")) {
          temp = "A";
        }
        if ((a == 1) && (d == 1) && (g == 0) && (temp == "")) {
          temp = "G";
        }
        if ((a == 1) && (d == 0) && (g == 1) && (temp == "")) {
          temp = "D";
        }
        if ((a == 0) && (d == 1) && (g == 1) && (temp == "")) {
          temp = "A";
        }
        if ((a == 1) && (e == 1) && (i == 0) && (temp == "")) {
          temp = "I";
        }
        if ((a == 1) && (e == 0) && (i == 1) && (temp == "")) {
          temp = "E";
        }
        if ((a == 0) && (e == 1) && (i == 1) && (temp == "")) {
          temp = "A";
        }
        if ((b == 1) && (e == 1) && (h == 0) && (temp == "")) {
          temp = "H";
        }
        if ((b == 1) && (e == 0) && (h == 1) && (temp == "")) {
          temp = "E";
        }
        if ((b == 0) && (e == 1) && (h == 1) && (temp == "")) {
          temp = "B";
        }
        if ((d == 1) && (e == 1) && (f == 0) && (temp == "")) {
          temp = "F";
        }
        if ((d == 1) && (e == 0) && (f == 1) && (temp == "")) {
          temp = "E";
        }
        if ((d == 0) && (e == 1) && (f == 1) && (temp == "")) {
          temp = "D";
        }
        if ((g == 1) && (h == 1) && (i == 0) && (temp == "")) {
          temp = "I";
        }
        if ((g == 1) && (h == 0) && (i == 1) && (temp == "")) {
          temp = "H";
        }
        if ((g == 0) && (h == 1) && (i == 1) && (temp == "")) {
          temp = "G";
        }
        if ((c == 1) && (f == 1) && (i == 0) && (temp == "")) {
          temp = "I";
        }
        if ((c == 1) && (f == 0) && (i == 1) && (temp == "")) {
          temp = "F";
        }
        if ((c == 0) && (f == 1) && (i == 1) && (temp == "")) {
          temp = "C";
        }
        if ((g == 1) && (e == 1) && (c == 0) && (temp == "")) {
          temp = "C";
        }
        if ((g == 1) && (e == 0) && (c == 1) && (temp == "")) {
          temp = "E";
        }
        if ((g == 0) && (e == 1) && (c == 1) && (temp == "")) {
          temp = "G";
        }
      }
      
      function logicThree() {
        if ((a == 2) && (b == 2) && (c == 0) && (temp == "")) {
          temp = "C";
        }
        if ((a == 2) && (b == 0) && (c == 2) && (temp == "")) {
          temp = "B";
        }
        if ((a == 0) && (b == 2) && (c == 2) && (temp == "")) {
          temp = "A";
        }
        if ((a == 2) && (d == 2) && (g == 0) && (temp == "")) {
          temp = "G";
        }
        if ((a == 2) && (d == 0) && (g == 2) && (temp == "")) {
          temp = "D";
        }
        if ((a == 0) && (d == 2) && (g == 2) && (temp == "")) {
          temp = "A";
        }
        if ((a == 2) && (e == 2) && (i == 0) && (temp == "")) {
          temp = "I";
        }
        if ((a == 2) && (e == 0) && (i == 2) && (temp == "")) {
          temp = "E";
        }
        if ((a == 0) && (e == 2) && (i == 2) && (temp == "")) {
          temp = "A";
        }
        if ((b == 2) && (e == 2) && (h == 0) && (temp == "")) {
          temp = "H";
        }
        if ((b == 2) && (e == 0) && (h == 2) && (temp == "")) {
          temp = "E";
        }
        if ((b == 0) && (e == 2) && (h == 2) && (temp == "")) {
          temp = "B";
        }
        if ((d == 2) && (e == 2) && (f == 0) && (temp == "")) {
          temp = "F";
        }
        if ((d == 2) && (e == 0) && (f == 2) && (temp == "")) {
          temp = "E";
        }
        if ((d == 0) && (e == 2) && (f == 2) && (temp == "")) {
          temp = "D";
        }
        if ((g == 2) && (h == 2) && (i == 0) && (temp == "")) {
          temp = "I";
        }
        if ((g == 2) && (h == 0) && (i == 2) && (temp == "")) {
          temp = "H";
        }
        if ((g == 0) && (h == 2) && (i == 2) && (temp == "")) {
          temp = "G";
        }
        if ((c == 2) && (f == 2) && (i == 0) && (temp == "")) {
          temp = "I";
        }
        if ((c == 2) && (f == 0) && (i == 2) && (temp == "")) {
          temp = "F";
        }
        if ((c == 0) && (f == 2) && (i == 2) && (temp == "")) {
          temp = "C";
        }
        if ((g == 2) && (e == 2) && (c == 0) && (temp == "")) {
          temp = "C";
        }
        if ((g == 2) && (e == 0) && (c == 2) && (temp == "")) {
          temp = "E";
        }
        if ((g == 0) && (e == 2) && (c == 2) && (temp == "")) {
          temp = "G";
        }
      }
      
      function checkSpace() {
        if ((temp == "A") && (a == 0)) {
          ok = 1;
          if (computer == 0) a = 1;
          if (computer == 1) a = 2;
        }
        if ((temp == "B") && (b == 0)) {
          ok = 1;
          if (computer == 0) b = 1;
          if (computer == 1) b = 2;
        }
        if ((temp == "C") && (c == 0)) {
          ok = 1;
          if (computer == 0) c = 1;
          if (computer == 1) c = 2;
        }
        if ((temp == "D") && (d == 0)) {
          ok = 1;
          if (computer == 0) d = 1;
          if (computer == 1) d = 2;
        }
        if ((temp == "E") && (e == 0)) {
          ok = 1;
          if (computer == 0) e = 1;
          if (computer == 1) e = 2;
        }
        if ((temp === "F") && (f === 0)) {
         ok=1
         if (computer === 0) f = 1;
         if (computer === 1) f = 2;
       }
       if ((temp === "G") && (g === 0)) {
        ok=1
        if (computer === 0) g = 1;
        if (computer === 1) g = 2;
      }
      if ((temp === "H") && (h === 0)) {
        ok = 1;
        if (computer === 0) h = 1;
        if (computer === 1) h = 2;
      }
      if ((temp === "I") && (i === 0)) {
        ok = 1;
        if (computer === 0) i = 1;
        if (computer === 1) i = 2;
      }
    }

    // this function will execute to place the spot on the html website
    function yourChoice(choiceName) {
      if (win != 0) ended();
      if (win === 0) {
        computer = 0;
        ok = 0;
        temp = choiceName;
        checkSpace();
        if (ok === 1) {
          document.images[choiceName].src = x;
        }
        if (ok === 0) {
          occupied();
        }
        process();
        if (win === 0) {
          myChoice();
        }
      }
    }

    // check if the spot is taken
    function occupied() {
      alert("That spot is gone. Please select another one.")
    }

    // this function is to make a choice for computer and place the spot
    function myChoice() {
      temp = "";
      ok = 0;
      computer = 1;
      logicThree();
      logicTwo();
      checkSpace();
      while(ok == 0) {
        randomNumber = Math.random()
        comp = Math.round((choice - 1) * randomNumber) + 1;
        if (comp == 1) temp = "A";
        if (comp == 2) temp = "B";
        if (comp == 3) temp = "C";
        if (comp == 4) temp = "D";
        if (comp == 5) temp = "E";
        if (comp == 6) temp = "F";
        if (comp == 7) temp = "G";
        if (comp == 8) temp = "H";
        if (comp == 9) temp = "I";
        checkSpace();
      }
      document.images[temp].src= o;
      process();
    }

    // to check if the game is ended
    function ended() {
      alert("Please click the 'Play Again' button.");
    }

    // to check and process the result of the game
    function process() {
      logicOne();
      if (win == 1){ 
        alert("You win!");
      }
      if (win == 2){ 
        alert("Computer win!");
      }
      if (win == 3){ alert("Tie!"); 
      }
    }

    // to make the button 'Play Again' work
    function playAgain() {
      if (win == 0) {
        if(confirm("Restart the game!")) 
          {
            reset();
          }
      }
      if (win>0) {
        reset();
      }
    }

    // reset the game
    function reset() {
      win = 0;
      a = 0;
      b = 0;
      c = 0;
      d = 0;
      e = 0;
      f = 0;
      g = 0;
      h = 0;
      i = 0;
      temp = "";
      ok = 0;
      computer = 0;
      choice = 9;
      randomNumber = 0;
      comp = 0;
      document.images.A.src = empty;
      document.images.B.src = empty;
      document.images.C.src = empty;
      document.images.D.src = empty;
      document.images.E.src = empty;
      document.images.F.src = empty;
      document.images.G.src = empty;
      document.images.H.src = empty;
      document.images.I.src = empty;
    }

// Refactored Code

// I just learn this code from the website 'http://www.jsmadeeasy.com/javascripts/Games/Tic-Tac-Toe/index.htm' and modify the format and rename the variable to make it readable. I pretty much understand the logic and I am thinking to make another new solution by using other methods. It is a very fun game, though.

// Reflection

//What was the most difficult part of this challenge?

// A: I think the most part of this challenge is how to develop the algorithms of the game in JavaScript.

// What did you learn about creating objects and functions that interact with one another?

// A: I learn that I can create a inner functions inside of the object, but this is function is only accessed by this object, also the function can access the object properties. If I create a global function, any object can access it.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// A: I learn a lot of JavaScript methods that can manipulate the HTML tag. For example, getElementById(), getElementByClassName. When you use getElementById or getElementByClassName, you can get the value of the tag with specific id or class name. If you give a name attribute to a tag, this is a very easy way to get the value from the anchors. Also you can put a function inside a HTML tag, once you click the mouse or do something, the function will be activated.

// How can you access and manipulate properties of objects?
//
// A: We can use the properties' name by using dot notation or bracket notation.
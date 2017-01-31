// Release 3: Compare Loops
// for (var i = 0; i < 10; i++) {
//   console.log([i]);
// }

// for (var i = 0; i < 10; i++) {
//   console.log(i);
// }

// for (var i = 0; i < 10; i += 2) {
//   console.log(i);
// }

// for (var i = 10; i > 0; i -= 1) {
//   console.log(i);
// }

// Release 4: Write a JavaScript Program
// pseudocode
// - declare function, keyword, name, arguments
//   - intitialize output return variable
//   - for loop
//     - counter: input string length
//     - condition: while counter is greater than or equal to zero
//     - increment: -1
//       - for each character of input string starting from last index
//         - add it to output object
//       - print return variable
// - call function with argument


// business logic
function reverse(string){
  var reversed = "";
  for (var i = string.length - 1; i >= 0; i -= 1) {
    reversed += string[i];
  }
  if (string.length < 1) {
    console.log("Error: invalid user input");
  }
  else {
    console.log(reversed);
  }
}

// driver code
reverse("hello")
reverse("abcdefghijklmnopqrstuvwxyz")
reverse("supercalifragilisticexpialidocious")
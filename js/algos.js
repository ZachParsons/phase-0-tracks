// Release 0: Find the Longest Phrase

// two ways to write this function:
// 1. with empty comparison variable & ">" conditional inside a loop
// 2. with .max & .indexOf

// pseudocode
// declare function, name, arguments
// declare compare variable to iterative evaluate & finally return
// loop for all variables in input array
//   if variable length is greater than compare variable
//   reassign compare variable to that variable
// return compare variable

// business logic
function longestPhraseFinder(phrasesArray){
  longestPhrase = "";
  for (var i = 0; i < phrasesArray.length; i++) {
    if (phrasesArray[i].length > longestPhrase.length) {
      longestPhrase = phrasesArray[i];
    }
  }
  return longestPhrase;
}

// driver code
var example = ["long phrase","longest phrase","longer phrase"]
var idioms = ["a hot potato", "a penny for your thoughts", "actions speak louder than words", "add insult to injury", "an arm and a leg", "at the drop of a hat"]

console.log(longestPhraseFinder(example));
console.log(longestPhraseFinder(idioms));


// Release 1: Find a Key-Value Match
// pseudocode
// declare function takes two hash-like objects as arguments
// for loop through all the keys in first object
//   if conditional to compare first object's key with second objects key
//     true conditional match assigned true
//   else match assigned false
//   return match boolean


function pairCompare(object1, object2) {
  for (var key in object1) {
    if (object1[key] == object2[key]) {
      match = true;
    }
    else {
      match = false;
    }
  }
  return match;
}

person1 = {name: "Steven", age: 54}
person2 = {name: "Tamir", age: 54}
console.log(pairCompare(person1, person2))

// Release 2: Generate Random Test Data
// pseudocode
// declare a function that takes an integer for the length of an array
//   assign empty variables for array, string, character
//     for each increment of 1 in the argument integer return a string
//       for each increment of  1 in a random number multiplied & rounded
//         add a random character from the source string to the output string
//       add that string to the array
//     return the array


function randomStringsArrayer(arrayLengthInteger){
  var stringsArray = [];
  var charSource = "abcdefghijklmnopqrstuvwxyz";
  var charsString  = "";

  for (var i1 = 0; i1 < arrayLengthInteger; i1++) {
    charsString = "";
    for (var i2 = 0; i2 < Math.floor(Math.random() * 10)+1; i2++) {
      charsString += charSource[Math.floor(Math.random() * 25)];
    }
    stringsArray.push(charsString);
  }
  return stringsArray;
}

console.log(randomStringsArrayer(5));



for (var i = 0; i < 10; i++) {
  var x = Math.floor(Math.random() * 10)+1;
  var y = randomStringsArrayer(x);
  
  console.log("Your array of strings of random length & random characters: ");
  console.log(y);
  
  console.log("The longest string in that array is: ");
  console.log(longestPhraseFinder(y))
}

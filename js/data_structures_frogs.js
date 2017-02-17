// // 7.2 Mandatory Pairing: Data Structures

// // Release 0: Work with Arrays
colors = ["cyan", "magenta", "yellow", "black"]
horse_names = ["Sea Biscuit", "Harriet", "Black Beauty", "Ed"]


colors.push("red");
horse_names.push("Bessie");

// console.log(colors, horse_names)

// Release 1: Build an Object

colored_horses = {}
arrays_equal_length = null

if (colors.length == horse_names.length) {
  for (var i = 0; i < horse_names.length; i++) {
    colored_horses[horse_names[i]] = colors[i];
  } 
} else { 
    console.log("error: unequal arrays")
  }

console.log(colored_horses);


// Release 2: Build Many Objects Using a Constructor
function Car(year, make, model, used) {

  console.log("Our new car:", this);
  
  this.year = year;
  this.make = make;
  this.model = model;
  this.used = used;

  this.honk = function(){console.log("Honk!");};
  
  // console.log("CAR INITIALIZATION COMPLETE");
}

// console.log("Let's build a car ...");

var car1 = new Car(2017, "Ford", "Mustang", false);
console.log(car1);
console.log("Our car can honk:");
car1.honk();
console.log("----");

var car2 = new Car(1995, "Ford", "Bronco", true);
console.log(car2);
console.log("Our car can honk:");
car2.honk();
console.log("----");

var car3 = new Car(1980, "Ford", "Pinto", true);
console.log(car3);
console.log("Our car can honk:");
car3.honk();
// console.log("----");


// Release 3: Research on Your Own
// 1. If you wanted to loop through the keys and values of an object, how would you do that? (There are a few ways to accomplish this, and some gotchas that can happen depending on your approach.)
var dog = {name: 'Spot', age: 3, isGoodDog: true};
for (var key in dog) {
  if (dog.hasOwnProperty(key)) {
    console.log(dog[key]);
  }
}

// 2. Are there advantages to using constructor functions to create objects? Disadvantages? 
// Object literals are good for containing data, variables, properties, while
// constructors are good for containing methods, functions & via .prototype works like a class.

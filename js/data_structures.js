// Release 0: Work with Arrays
var colors = ["yellow", "cyan", "magenta", "black"];
var names = ["Ed", "Sea Biscuit", "Joe", "Speedster"];

colors.push("transparent");
names.push("Tornado");
console.log(colors);
console.log(names);


// Release 1: Build an Object
function array_hasher(array1, array2) {
  var hash = {}
  for (var i = 0; i < array1.length; i++){
    hash[array1[i]] = array2[i];
  }
  return hash
}
array_hasher(names, colors)

//Release 2: Build Many Objects Using a Constructor
function Car(year, make, model){
    console.log("New car: ", this);
    this.year = year;
    this.make = make;
    this.model = model;
    this.vroom = function(){console.log("VROOM VROOM!!!");};
    console.log("CAR INITIALIZATION IS COMPLTE!");
};
console.log("LETS BUILD A CAR");
var car1 = new Car(2000, "Toyota", "Corolla");
console.log(car1);
console.log("Our car can:");
car1.vroom();
console.log("\n");


// Release 3: Research on Your Own
var dog = { name: 'Spot', age: 3, isGoodDog: true };
for (var key in dog) {
  if (dog.hasOwnProperty(key)) {
    console.log(dog[key]);
  }
}
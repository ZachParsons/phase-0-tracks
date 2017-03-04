console.log("check");

var p2 = document.createElement("P");
var text = document.createTextNode("second paragraph")

p2.appendChild(text);

document.body.appendChild(p2);


// function class_effector() {
//   var e_array = document.getElementbyClassName('effected');
//   console.log(e_array);

//   for (var i = e_array.length - 1; i >= 0; i++) {
//   e_array[i].style.color = 'red';
//   }
// }

// class_effector();


function addPinkBorder() {
  var photo = document.getElementById("image");
  photo.style.border = "10px solid pink";
} 

var photo = document.getElementById("image");
photo.addEventListener("click", addPinkBorder)
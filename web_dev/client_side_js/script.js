console.log("check");

var p2 = document.createElement("P");
var text = document.createTextNode("second paragraph")

p2.appendChild(text);

document.body.appendChild(p2);

// improvised element iterator
// function class_effector() {
//   var e_array = document.getElementbyClassName('effected');
//   console.log(e_array);
//   for (var i = e_array.length - 1; i >= 0; i++) {
//   e_array[i].style.color = 'red';
//   }
// }
// class_effector();

// MDN createNodeIterator
// var nodeIterator = document.createNodeIterator(
//     document.body,
//     NodeFilter.SHOW_ELEMENT,
//     function(node) {
//         return node.nodeName.toLowerCase() === 'p' ? NodeFilter.FILTER_ACCEPT : NodeFilter.FILTER_REJECT;
//     }
// );
// var pars = [];
// var currentNode;

// while (currentNode = nodeIterator.nextNode()) {
//   pars.push(currentNode);
// }


function addPinkBorder() {
  var photo = document.getElementById("image");
  photo.style.border = "50px solid pink";
} 

var photo = document.getElementById("button");
photo.addEventListener("click", addPinkBorder)
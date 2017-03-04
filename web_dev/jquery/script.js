// Options for exploring jQ
//
//   #elements
// paragraph
// image
// button
//   #actions
// add/remove
// set/get content
// dimension
// effect
// animate
//   #selections
// chain
// ancestor
// descendant
// sibling
// filter
//  #events
// mouse
// keyboard
// form
// window


$(document).ready(function() {

// adds text to paragraph
$("p").append("Some appended text.");

// changes dimension of image on click
$("img").click(function(){
  $("img").width(500);
})

// toggles paragraph on button click
$("button").click(function(){
  $("p").toggle();
});

// changes paragraph text color on hover (start & end) 
$("p").hover(
  function(){
    $(this).css('color', 'pink');
  },
  function()
    {$(this).css('color', 'teal');
  }
);

});
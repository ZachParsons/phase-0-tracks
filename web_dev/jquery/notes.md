9.3 jQuery
Release 1: Study Up

# Study notes

https://www.w3schools.com/jquery/

Intro: library of methods called simply but wrapping lots of JS code
    - most popular & extendable JS framework
    - features
        - HTML/DOM manipulation
        - CSS manipulation
        - HTML event methods
        - Effects and animations
        - AJAX
        - Utilities
Started: JQ is single file referenced in HTML head - included from CDN Google
Syntax: after CCS: $(selector).action()
    - document ready event method makes it run after loading, two syntaxes:
    - $(document).ready(function(){...});
    - $(function(){
Events: user actions that webpage can response to - "fire"
    - mouse
    - keyboard
    - form
    - window

Effects: Hide/Show, Fade, Slide
    - $(selector).method(speed,callback);
    - parameters (speed, opacity, callback)
Animate: $(selector).animate({params},speed,callback);
    - requires proper CSS property setting
    - $(selector).stop(stopAll,goToEnd);
Callback: executed after current effect is finished
Chaining: runs multiple jQ methods in one statement - format: inline or block

HTML DOM
Get & Set Content:
    - .text()
    - .html()
    - .val()
    - .attr()
    - Callback function
Add & Remove Elements & Content
    add to new line: .append(), .prepend()
    add to same line: .after() same line, .before()
    remove itself: .remove()
    remove children: .empty()
    filter: .remove({params})
CSS Classes
    - add to class: .addClass()
    - remove from class: .removeClass()
    - toggleClass()
css(): returns & sets multiple CSS properties
Dimensions: 













jQuery Examples: https://www.w3schools.com/jquery/jquery_examples.asp
jQuery Selectors: https://www.w3schools.com/jquery/jquery_ref_selectors.asp

# Self-teaching notes
    (which strategies seemed to be the most effective)

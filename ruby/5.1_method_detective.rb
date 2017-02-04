# 5.1 Using Ruby Documentation
# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# returns string with all characters' case swapped
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
# returns string with argument given index & character inserted
# => “zoom”

"enhance".center(15)
# returns string with given string centered by argument's <15> total of indexes adding spaces
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# returns string with all characters upcased
# => "STOP! YOU’RE UNDER ARREST!"

"the usual" << " suspects"
# returns string with right string added to left string via append operator
#=> "the usual suspects"

" suspects".prepend("the usual")
# returns string with argument's string prepended or put before it
# => "the usual suspects"

"The case of the disappearing last letter".chop
# returns string with last character chopped off
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice(1..39)
# returns string of characters sliced off by argument's index range
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".split.join(" ")
# returns string with words split into array items & joined by argument
# => "Elementary, my dear Watson!"

"z".ord
# returns the ordinal of a one-character string
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# ASCII characters have an assigned number, lowercase z is 122
# here's the ASCII code chart: https://www.wikiwand.com/en/ASCII#/Code_chart

"How many times does the letter 'a' appear in this string?".count "a"
# returns count of argument's characters in string
# => 4

"Lorem ipsum dolor sit amet, consectetur adipiscing elit.".gsub(/[etaoinshrdlu]/, "e" => "3", "t" => "7", "a" => "4", "o" => "0", "i" => "1", "n" => "2", "s" => "5", "h" => "#", "r" => "2", "d" => "6", "l" => "7", "u" => "v")
# translate most common letters in the English language in string Lorem to basic number 1337
# returns string with characters substituted by pattern & replaced
# =>  "L023m 1p5vm 60702 517 4m37, c0253c737v2 461p15c12g 3717."

"space out by two".each_char {|c| print c, "  "}
# stretch that string
# returns string with each character followed by argument string <"  ">
# => s  p  a  c  e     o  u  t     b  y     t  w  o  

"Never a foot too far, even.".delete(","".").reverse.split.join.downcase.insert(5, " ").insert(7, " ").insert(12, " ").insert(16, " ").insert(20, " ").insert(20, ",").capitalize<<"."
# overcomplicated palindrome sentence
# returns string with punctuation deleted, reversed, words split into array items, joined, downcased, with spaces & punctuation inserted, then capitalized
# => "Never a foot too far, even."

# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual" << " suspects"
#=> "the usual suspects"

" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice(1..39)
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".split.join(" ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# ASCII characters have an assigned number, lowercase z is 122
# here's the ASCII code chart: https://www.wikiwand.com/en/ASCII#/Code_chart

"How many times does the letter 'a' appear in this string?".count "a"
# => 4

"Lorem ipsum dolor sit amet, consectetur adipiscing elit.".gsub(/[etaoinshrdlu]/, "e" => "3", "t" => "7", "a" => "4", "o" => "0", "i" => "1", "n" => "2", "s" => "5", "h" => "#", "r" => "2", "d" => "6", "l" => "7", "u" => "v")
# translate most common letters in the English language in string Lorem to basic number 1337

"space out by two".each_char {|c| print c, "  "}
# stretch that string

"Never a foot too far, even.".delete(","".").reverse.split.join.downcase.insert(5, " ").insert(7, " ").insert(12, " ").insert(16, " ").insert(20, " ").insert(20, ",").capitalize<<"."
# overcomplicated palindrome sentence
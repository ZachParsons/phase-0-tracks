hamster_name = ""
volume_level = 0
fur_color = ""
adoptable = nil
age = 0


puts "What's the hamster's name?"
hamster_name = gets.chomp

puts "How loud does the hamster snore (from 1-10)?"
volume_level = gets.chomp.to_i

puts "What's the hamster's fur color?"
fur_color = gets.chomp

puts "Is the hamster up for adoption (t/f)?"
adoptable = gets.chomp
if adoptable == "t"
  adoptable = true
elsif adoptable == "f"
  adoptable = false
else
  adoptable = nil
end

puts "What's the hamster's age?"
age = gets.chomp.to_i
if age == nil
  puts "Hamster's age is unknown."
end

puts "The hamster's name is #{hamster_name}"
puts "The hamster's volume level is #{volume_level}"
puts "The hamster's fur color is #{fur_color}"
puts "The hamster is adoptable: #{adoptable}"
puts "The hamster's age is #{age}"
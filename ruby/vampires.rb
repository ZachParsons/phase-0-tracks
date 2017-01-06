#global variables of employee
vampire = ""
name = ""
age = 0
birthyear = 0
order = nil
enroll = nil
believable = nil
processing = 0
surveyed = 0
allergies = []
input = ""

puts "How many employees will you be processing today?"
processing = gets.chomp.to_i

# using while loop instead of until loop to use < for criteria 3
while surveyed < processing

  puts "What's your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp

  puts "What year were you born?"
  birthyear = gets.chomp

# future task: insert method for the math to reconcile 1 year discrepancy between age & years since birth
  if age.to_i != (Time.now.year.to_i - birthyear.to_i)
    believable = false
    puts "Your age & years since birth don't match. *eyebrow raise*"
  else
    believable = true
  end

  puts "Want us to order some garlic bread for you? (y/n)"
  order = gets.chomp
  if order == "y"
    order = true
    puts "Garlic bread will be ordered for you."
  elsif order == "n"
    order = false
    puts "Garlic bread won't be ordered for you."
  else
    order = nil
    puts "Your answer wasn't y/n."
  end

  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  enroll = gets.chomp
  if enroll == "y"
    enroll = true
    puts "You will be enrolled."
  elsif enroll == "n"
    enroll = false
    puts "You won't be enrolled."
  else
    enroll = nil
    puts "Your answer wasn't y/n."
  end

  case 
    when believable && (order || enroll)
      vampire = "probably not"
      puts "Probably not a vampire."
    when !believable && (!order || !enroll)
      vampire = "probably"
      puts "Probably a vampire."
    when !believable && !order && !enroll
      vampire = "almost certainly"
      puts "Almost certainly a vampire."
    when name == ("Drake Cula" || "Tu Fang")
      vampire = "definitely"
      puts "Definitely a vampire."
    else
      vampire = "inconclusive"
      puts "Results inconclusive."
  end

  puts "Enter your allergies. (Enter 'done' when you are so.)"
  input = ""
  allergies = []
  while input != ("done" || "sunshine")
    input = gets.chomp
    if input == "done"
      puts "These are your allergies: " +allergies.to_s
    elsif input == "sunshine"
      vampire = "probably"
      puts "Probably a vampire."
    else
      allergies << "#{input} "
      puts "What else?"
    end
  end

  puts "Survey Results:","vampire: #{vampire}", "name: #{name}", "age: #{age}", "age believable: #{believable}", "garlic bread: #{order}", "health insurance: #{enroll}", "allergies: #{allergies}"

  surveyed += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
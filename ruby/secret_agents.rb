# method declarations

# encrypt pseudocode
#Ask the user where they'd like to encrypt or decrypt a password.
#If Encrypt, run encrypt method.
#Take the password of the user they'd like to encrypt
#Set the index to 0.
#While the index of the password is less than the length of the password, proceed to loop the method.
#If the index of the input is equal to " ", leave it as a space.
#Else, the input should return the next letter of the alphabet.
#Restart the loop until index equals the length of password.
#Once the condition is met, end the loop and print result of new string.

# encrypt method
# reassigns the string with the next letters of the alphabet.
def encrypt(input)
index = 0
output = ""
while index < input.length
  if input[index] == " "
    new_string = new_string + " "
  else
   
     if input[index].next == "aa"
       output = output + "a"
     else
     output = output + input[index].next
     end
  end
  index += 1

end
output
end


# # decrypt pseudocode
#Decrypts a given string with the previous letters of that string.
#Ask the user where they'd like to encrypt or decrypt a password.
#If Decrypt, run Decrypt method.
#Take the password of the user they'd like to decrypt
#Set the index to 0.
#Create an empty string to store new string into.
#Set a variable to compare to (alphabet that contains all letters of the alphabet)
#While the index of the password is less than the length of the password, proceed to loop the method.
#Set an index for the alphabet string to 0
#Set another loop while the index of the alphabet is less than length of alphabet.
#If the index of the input is equal to " ", leave it as a space.
#Else, the input should return the previous letter of the alphabet.
#Restart the loop until index equals the length of password.
#Once the condition is met, end the loop and print result of new string.

# decrypt method
def decrypt(input)
 input_index = 0

 alphabet = "abcdefghijklmnopqrstuvwxyz"
 output = ""

 while input_index < input.length
     alphabet_index = 0
     
   while alphabet_index < alphabet.length
     if input[input_index] == alphabet[alphabet_index]
       output = output + alphabet[alphabet_index-1]
     elsif input[input_index] == " "
       output = output + " "  
     end
     # adds +1 to the alphabet index counter until loop condition is met
     alphabet_index += 1
   end
   # adds +1 to the input index counter until loop condition is met
   input_index += 1
 end
 # split splits strings by " ".
 # join joins strings by " "
 output.split.join(" ")

end


# driver code

# Release 4: Try a Nested Method Call
decrypt(encrypt("swordfish"))

# asks user what method they want to run.
puts "Encrypt or decrypt?"
direction = gets.chomp
run_encrypt = nil
run_decrypt = nil
if direction == "encrypt"
run_encrypt = true
elsif direction == "decrypt"
run_decrypt = true
else
direction = nil
puts "Can't interpret what was typed."
end

# gets password to use in encrypt/decrypt method
puts "Enter password."
password = gets.chomp
if run_encrypt == true
puts encrypt(password)
elsif run_decrypt == true
puts decrypt(password)
end
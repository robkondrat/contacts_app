require 'http'

system "clear"

puts
puts "Contacts App ".center(50, " *")
puts "=" * 50
puts

puts "     [1] Rob Kondratowicz"
puts "     [2] Tom Hanks"
puts "     [3] Bill Murray"
puts 


print "Pick a contact:"
user_input = gets.chomp

if user_input == "1"
  response = HTTP.get("http://localhost:3000/api/first_contact_url")

elsif user_input == "2"
  response = HTTP.get("http://localhost:3000/api/second_contact_url")

elsif user_input == "3"
  response = HTTP.get("http://localhost:3000/api/third_contact_url")
  
end

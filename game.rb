# this is an easy game


puts "WELCOME TO ZOMBIE LIFE"
puts "Are you ready to begin? (yes, no)"
answer = gets.chomp.downcase

case answer
when "yes"
puts "Let's begin"
puts <<STR
You are lost in a forest and a group of zombies are on your trail, what do you do?
STR
number_of_zombies = gets.chomp.downcase
zombies_array = [3, 4, 5].shuffle.first #gives a different number of zombies everytime
puts "You have #{zombies_array} zombies following you" if number_of_zombies == "yes"
puts "Aight, Let's do this" if number_of_zombies == "no"
puts <<END
What do you do
Options :
run
fight
cry
END
puts "What's your choice?"
option = gets.chomp.downcase
if option == "run"
  puts "Good choice, #{zombies_array} zombies would it have ate you alive"
end
if option == "fight"
puts "Ninja mode activated, pick your weapon: (sword or nunchucks)"
weapon =  gets.chomp.downcase
end
if weapon == "sword"
  puts " You have #{zombies_array} zombies coming your way, get ready to engage"
  puts "type swing when ready"
  swing = gets.chomp.downcase
end
puts "BOOM!! KABAM, SWISH, you won the fight" if swing == "swing"
puts "what a fight but the nunchucks weren't enough, they kept coming and eventually took over and won" if weapon == "nunchucks"
puts "What a baby, GAME OVER!" if option == "cry"
when "no"
  puts "'TILL NEXT TIME !!"
else
  puts "Try again, remember to type yes or no"
  answer = "yes"
end

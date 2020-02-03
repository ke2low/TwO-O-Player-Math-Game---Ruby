
load './player.rb'

p1 = Person.new('Player 1')
p2 = Person.new('Player 2')

gameNumber = 0;

while p1.lives > 0 && p2.lives > 0
  if (game % 2 == 0)
    puts p1.ask
    answer = gets.chomp
    puts p1.reply(answer, p1.answer)
    puts "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3 "
    puts "---- NEW TURN ----"
    puts ""
    gameNumber = gameNumber + 1
  elsif (game % 2 != 0)
    puts p2.ask
    answer = gets.chomp
    puts p2.reply(answer, p2.answer)
    puts "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3 "
    puts "---- NEW TURN ----"
    puts ""
    gameNumber = gameNumber + 1
  end
end

if (p2.lives == 0) 
  puts "#{p1.name} wins with a score of #{p1.lives}/3 "
  puts "---- GAME OVER ----"
  puts "Good bye!"
elsif (p1.lives == 0)
  puts "#{p2.name} wins with a score of #{p2.lives}/3 "
  puts "---- Game OVER ----"
  puts "Good bye!"
end



# gets.chomp
# puts
# puts, raise some_val.inspect, and byebug for debugging


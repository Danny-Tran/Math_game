require "./player"
require "./question"
require "./game"

class Turn

  def initialize player
      @player = player
  end

  def run
    question1 = Question.new()
    p @player.name + " " + question1.ask_question?
    userInput = gets.chomp.to_i
    if  question1.correct_answer? userInput
      puts "That's Correct!"
      else
        @player.damage?
        puts "Wrong! You have lost a live"
    end
    puts @player.name + " you have " + @player.lives.to_s + " lives left"
    puts "========NEW TURN========"
  end
end



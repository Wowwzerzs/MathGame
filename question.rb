class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def ask_question(player)
    puts "#{player.name}: What does #{@num1} plus #{@num2} equal?"
    print "> "
    player_answer = gets.chomp.to_i
    if player_answer == @answer
      puts "#{player.name}: YES! You are correct."
    else
      puts "#{player.name}: Seriously? No!"
      player.lose_life
    end
  end
end

class Game

  def start
    puts "WELCOME TO THE GAME OF FLIP"
    puts "-" * 10
    puts "LEADERBOARD"

    users = User.where.not(score: 0).order(score: :DESC)

    puts "Place - Name - Score "
    users.each_with_index do |user, index|
      puts "#{index + 1}) #{user.name} #{user.score}"
    end
    puts "Input your name > "
    name = gets.chomp

    results = User.where(name: name)
    user = results.first

    if user.nil?
      user = User.new(name: name)
    end

    response = ''
    until response == 'q' do
      puts "(h)eads or (t)ails? (q)uit > "
      response = gets.chomp

      flip = %w(h t).sample

      if flip == response
        puts "You win!"
        user.score += 1
      else
        puts "You lose!"
      end
    end
    user.save!
    exit
  end

end

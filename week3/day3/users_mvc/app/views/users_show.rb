class UsersShow
  def render(user)
    puts "User Name: #{user.first_name} #{user.last_name}"
    puts "Age: #{user.age}"
  end
end

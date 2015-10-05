person = {
  name: '',
  set_name: -> (new_name) {
    person[:name] = new_name
  },
  foods: ['apple', 'pear', 'taco'],
  list_fav_foods: -> {
    print_food = -> (food) {
      puts "I love #{food}!"
    }
    person[:foods].each(&print_food)
  }
}

puts "Person's name is #{person[:name]}"
person[:set_name].call('Justin')
puts "Person's name is #{person[:name]}"
person[:list_fav_foods].call()








double = -> (n) {
  n * 2
}

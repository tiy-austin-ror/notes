require 'csv'

food_data = CSV.read("foods.csv", headers: true)

def print_favs(csv_table)
  csv_table.each do |row|
    fav_from_row = row[" favorite"]
    if fav_from_row && fav_from_row.strip == "yes"
      puts row["name"].strip
    end
  end
end

def print_other(csv_table)
  csv_table.each do |row|
    fav_from_row = row[" favorite"]
    if fav_from_row && fav_from_row.strip == "no"
      puts row["name"].strip
    end
  end
end

def puts_lists(csv_table)
  puts "Favorite Foods"
  puts "-" * 10
  print_favs(csv_table)
  puts

  puts "Non Favorite Foods"
  puts "-" * 10
  print_other(csv_table)
  puts
end

def save_to_file(new_food)
  CSV.open("foods.csv", "a+") do |csv|
    csv << new_food # [ name , fav_or_not ]
  end
end

puts_lists(food_data)

print " add new food (comma and if it is ur fav)>"
input = gets.chomp

new_food = input.strip.split(",")

save_to_file(new_food)

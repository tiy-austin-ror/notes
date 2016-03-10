
def excited_name(name)
  upper_name = name.upcase
  "#{upper_name}!"
end


def test_excited_name
  actual_name1 = excited_name("justin")
  actual_name2 = excited_name("jeb")
  actual_name3 = excited_name("HELOO!")
  actual_name4 = excited_name("44")

  puts actual_name1 == "JUSTIN!"
  puts actual_name2 == "JEB!"
  puts actual_name3 == "HELOO!!"
  puts actual_name4 == "44!"
end

test_excited_name

def fizzbuzz(n)
  div_by = -> (i, str) { str if (n % i).zero? }
  [
    div_by.call(3, 'fizz'),
    div_by.call(5, 'buzz')
  ].join
end

def fb(n)
  div_by = -> (i, str) { (str if (n % i).zero?).to_s }
  (str = (
    div_by[3, 'fizz'] <<
    div_by[5, 'buzz']
  )).empty? ? n : str
end

def main
  (1..100).each do |n|
    puts (fizzbuzz(n).empty? ? n.to_s : fb(n))
  end
end

require 'pry'; binding.pry

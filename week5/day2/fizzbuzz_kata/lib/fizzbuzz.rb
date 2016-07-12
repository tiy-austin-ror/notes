class Fizzbuzz
  def run(n)
    return "fizzbuzz" if (n % 15).zero?
    return "buzz"     if (n %  5).zero?
    return "fizz"     if (n %  3).zero?
    n
  end
end

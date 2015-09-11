class FizzBuzzBaZuzz

  def run(min, max = 0, reverse = false)
    max = min if max <= min

    results = (min..max).to_a.map { |n| do_the_work(n) }

    if results.length == 1
      results.first
    else
      if reverse
        results.reverse
      else
        results
      end
    end
  end

  def do_the_work(n)
    return 'bazuzz'   if n % 45 == 0  # => false
    return 'fizzbuzz' if n % 15 == 0  # => false
    return 'bazz'     if n %  9 == 0  # => true
    return 'buzz'     if n %  5 == 0
    return 'fizz'     if n %  3 == 0
    n
  end
end

FizzBuzzBaZuzz.new.run(9, 11)  # => "bazz"

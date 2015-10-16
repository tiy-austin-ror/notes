class Fizzbuzz
  def run(max)
    1.upto(max).map do |n|
       # if n % 15 == 0
      #   fizzbuzz(n)
      # elsif n % 5 == 0
      #   buzz(n)
      # elsif n % 3 == 0
      #   fizz(n)
      # else      [1,

      #   n
      # end
      fizz(buzz(fizzbuzz(n)))
    end
  end

  def fizz(n)
    check_input(n, 'fizz') { (n % 3).zero? }
  end

  def buzz(n)
    check_input(n, 'buzz') { (n % 5).zero? }
  end

  def fizzbuzz(n)
    check_input(n, 'fizzbuzz') { (n % 15).zero? }
  end

  def check_input(n, val)
    return n if n.is_a?(String)
    return val if yield
    return n
  end
end

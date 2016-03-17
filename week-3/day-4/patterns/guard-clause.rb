def add_two(n)
  return if n.nil?
  return unless n.is_a?(Fixnum)
  return if n < 0 #Guard Clause
  2 + n # n has to be a number that is greater than 0
end

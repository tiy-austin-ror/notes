
#map
# [1, 2, 3, 4].map { |n| n + 1 } #=> [2, 3, 4, 5] #<< built in map
# map([1, 2, 3, 4]) do |n|
#   n + 1
# end
# #=> [2, 3, 4, 5]
def map(arr)
  new_arr = []                             # => [], []
  arr.each do |elem|                       # => [1, 2, 3, 4, 5], ["a", "b", "c"]
    new_arr << yield(elem)                 # => [2], [2, 3], [2, 3, 4], [2, 3, 4, 5], [2, 3, 4, 5, 6], ["A"], ["A", "B"], ["A", "B", "C"]
  end                                      # => [1, 2, 3, 4, 5], ["a", "b", "c"]
  new_arr                                  # => [2, 3, 4, 5, 6], ["A", "B", "C"]
end
map([1, 2, 3, 4, 5]) { |n| n + 1 }         # => [2, 3, 4, 5, 6]
map(['a', 'b', 'c']) { |l| l.capitalize }  # => ["A", "B", "C"]

#select
 # [1, 2, 3, 4].select { |n| n.even? }   # => [2, 4] << Built in
 # [1, 2, 3, 4].find_all { |n| n.even? }
 # select([1, 2, 3, 4]) { |n| n.even? }  # ~> [2, 4]
def select(arr)
  new_arr = []         # => [], []
  arr.each do |elem|   # => [1, 2, 3, 4], ["ap", "b", "ccc"]
    if yield(elem)     # => false, true, false, true, true, false, true
      new_arr << elem  # => [2], [2, 4], ["ap"], ["ap", "ccc"]
    end                # => nil, [2], nil, [2, 4], ["ap"], nil, ["ap", "ccc"]
  end                  # => [1, 2, 3, 4], ["ap", "b", "ccc"]
  new_arr              # => [2, 4], ["ap", "ccc"]
end

select([1, 2, 3, 4]) { |n| n.even? }                   # => [2, 4]
select(['ap', 'b', 'ccc']) { |char| char.length > 1 }  # => ["ap", "ccc"]

#reject
 # [1, 2, 3, 4].reject { |n| n.even? }   # => [1, 3] << Built in
 # reject([1, 2, 3, 4]) { |n| n.even? }  # ~> [1, 3]
def reject(arr)
  new_arr = []
  arr.each do |elem|
    if yield(elem)
    else
      new_arr << elem
    end
  end
  new_arr
end

#find
# [1, 2, 3, 4, 5].find { |x| x > 102 }  # => nil
# [1, 2, 3, 4, 5].find { |x| x.even? }  # => 2
def find(arr)
  return_val = nil       # => nil
  arr.each do |elem|     # => [1, 2, 3, 4]
    if yield(elem)       # => false, true
      return_val = elem  # => 2
      break
    end
  end                    # => nil
  return_val             # => 2
end

find([1, 2, 3, 4]) { |x| x.even? }  # => 2

#any?
# [1, 2, 3].any? { |x| x.even? } #=> true
# [1, 3, 5].any? { |x| x.even? } #=> false
def any?(arr)
  return_val = false             # => false
  arr.each do |elem|             # => [1, 2, 3]
    if yield(elem)               # => false, true
      return_val = true          # => true
      break
    end
  end                            # => nil
  return_val                     # => true
end
any?([1, 2, 3]) { |n| n.even? }  # => true

#reduce
[1, 2, 3, 4, 5].reduce { |accumulator, n| n + accumulator }  # => 15
[1, 2, 2, 2, 3].reduce([]) do |arr, n|                       # => [1, 2, 2, 2, 3]
  if arr.include?(n)                                         # => false, false, true, true, false
    arr                                                      # => [1, 2], [1, 2]
  else
    arr << n                                                 # => [1], [1, 2], [1, 2, 3]
  end                                                        # => [1], [1, 2], [1, 2], [1, 2], [1, 2, 3]
end                                                          # => [1, 2, 3]

def reduce(arr, initial_acc = 0)
  output = initial_acc            # => []
  arr.each do |elem|              # => [1, 2, 2, 2, 3]
    output = yield(output, elem)  # => [1], [1, 2], [1, 2], [1, 2], [1, 2, 3]
  end                             # => [1, 2, 2, 2, 3]
  output                          # => [1, 2, 3]
end

# reduce([1, 2, 3]) { |acc, n| n + acc }   # => 6
reduce([1, 2, 2, 2, 3], []) do |arr, n|
  if arr.include?(n)                     # => false, false, true, true, false
    arr                                  # => [1, 2], [1, 2]
  else
    arr << n                             # => [1], [1, 2], [1, 2, 3]
  end                                    # => [1], [1, 2], [1, 2], [1, 2], [1, 2, 3]
end                                      # => [1, 2, 3]






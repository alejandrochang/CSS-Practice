def bad_two_sum?(arr, target_sum) # n^2

  (0...arr.length - 1).each do |i|
    (i + 1..arr.length - 1).each do |j|
      return true if arr[i] + arr[j] == target_sum
    end
  end

  false
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def two_sum?(arr, target_sum) # nlogn
  arr.each do |num|
    return true if arr.bsearch {|x| x + num == target_sum unless num == x}
  end

  false
end


arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false

def hash_two_sum?(arr, target_sum) # n
  hash = {}

  i = 0
  while i < arr.length
    sumMinusElement = target_sum - arr[i]

    if hash[sumMinusElement] != nil
      return true
    end

    hash[arr[i]] = true

    i += 1
  end

  return false
end


arr = [0, 1, 5, 7]
p hash_two_sum?(arr, 6)

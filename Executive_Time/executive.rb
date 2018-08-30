#Phase 1 (nested loop)
def my_min(list) # n^2
  min_value = list.first
  (0...list.length - 1).each do |i|
    (i + 1..list.length - 1).each do |j|
      if list[i] < min_value
        min_value = list[i]
      elsif list[j] < min_value
        min_value = list[j]
      end
    end
  end
  min_value

end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

#Phase 2

def my_min_2(list) # n
  min_value = list.first
  i = 0
  while i < list.length
    min_value = list[i] if list[i] < min_value
    i += 1
  end
  min_value
end

p my_min_2(list)  # =>  -5

def largest_contiguous_subsum(list)
  largest_sum = nil
  (0...list.length - 1).each do |i|
    (i..list.length - 1).each do |j|
        sub_arr_sum = list[i..j].reduce(&:+)
        if largest_sum == nil || largest_sum < sub_arr_sum
          largest_sum = sub_arr_sum
        end
      end
    end
  largest_sum
end

list = [5, 3, -7]
largest_contiguous_subsum(list) # => 8


def better_largest(list)
  sub_arr1 = []
  sub_arr2 = []
  sub_arr3 = []
  list.length.times do |i|
    sub_arr1 = list.take(i)
    sub_arr2 = list.drop(i)
    sub_arr3 << sub_arr1
    sub_arr3 << sub_arr2
  end

  largest_sum = 0

  sub_arr3.each do |arr|
    curr_sum = arr.reduce(&:+)
    unless curr_sum.nil?
      largest_sum = curr_sum if curr_sum > largest_sum
    end
  end
  largest_sum
end

list = [5, 3, -7]
p better_largest(list)

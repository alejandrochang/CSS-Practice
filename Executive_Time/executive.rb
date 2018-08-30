# #Phase 1 (nested loop)
# def my_min(list) # n^2
#   min_value = list.first
#   (0...list.length - 1).each do |i|
#     (i + 1..list.length - 1).each do |j|
#       if list[i] < min_value
#         min_value = list[i]
#       elsif list[j] < min_value
#         min_value = list[j]
#       end
#     end
#   end
#   min_value
#
# end
#
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5
#
# #Phase 2
#
# def my_min_2(list) # n
#   min_value = list.first
#   i = 0
#   while i < list.length
#     min_value = list[i] if list[i] < min_value
#     i += 1
#   end
#   min_value
# end
#
# p my_min_2(list)  # =>  -5
#
# def largest_contiguous_subsum(list)
#   largest_sum = nil
#   (0...list.length - 1).each do |i|
#     (i..list.length - 1).each do |j|
#         sub_arr_sum = list[i..j].reduce(&:+)
#         if largest_sum == nil || largest_sum < sub_arr_sum
#           largest_sum = sub_arr_sum
#         end
#       end
#     end
#   largest_sum
# end
#
# list = [5, 3, -7]
# largest_contiguous_subsum(list) # => 8


def better_largest(list)
  largest_sum = list.first
  curr_sum = -1.0/0
  list.each do |num|
    if num > 0
      curr_sum += num
      largest_sum = curr_sum if largest_sum < curr_sum
    else
      curr_sum = 0
      largest_sum = num if largest_sum < num
    end
  end
  largest_sum
end

list = [5, 3, -7]
list_2 = [2, 3, -6, 7, -6, 7]
list_3 = [-5, -1, -3]

p better_largest(list)
p better_largest(list_2)
p better_largest(list_3)

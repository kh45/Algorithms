# You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

## Examples
# [2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11 (the only odd number)

# [160, 3, 1719, 19, 11, 13, -21]
# Should return: 160 (the only even number)
#test

##Past terrible solution
# def find_outlier(integers)
#     even = 0
#     integers.each{|item|
#       if item.even?
#         even += 1
#       end}
#     integers.each{|item|
#       if even > 1
#         return item if item.odd?
#       else
#         return item if item.even?
#       end}
#   end

def find_outlier(integers)
    integers.one?{|num| num.odd?} ? integers.find{|num| num.odd?} : integers.find{|num| num.even?}
end
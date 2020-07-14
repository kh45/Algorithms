# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.


def two_sum(nums, target)
    nums.each_with_index do |item, index|
      answer = 1
      nums[index + 1, nums.length].each_with_index do |k, index2|
        if item + k == target
          return [index, index2 + index + answer]
        end
      end
      answer += 1
    end    
end
# Example 1:

# Input: nums = [1,2,3,4]
# Output: [24,12,8,6]
# Example 2:

# Input: nums = [-1,1,0,-3,3]
# Output: [0,0,9,0,0]

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  pre = Array.new(nums.length, 1)
  suff = Array.new(nums.length, 1)
  nums.length.times do |i|
    pre[i] = pre[i - 1] * nums[i - 1] if i.positive?
  end

  (nums.length - 1).downto(0) do |i|
    suff[i] = suff[i + 1] * nums[i + 1] if i < nums.length - 1
  end

  nums.length.times do |i|
    nums[i] = pre[i] * suff[i]
  end
  nums
end
puts product_except_self([1, 2, 3, 4])

# 1 2 3 4
# 1 1 2 6
# 24 12 4 1
# 24 12 8 6

# @param {Integer[]} nums
# @return {Boolean}

MAX_INT = 2**31 - 1

def increasing_triplet(nums)
  i = MAX_INT
  j = MAX_INT
  nums.each do |num|
    if num <= i
      i = num
    elsif num <= j
      j = num
    else
      return true
    end
  end
  false
end

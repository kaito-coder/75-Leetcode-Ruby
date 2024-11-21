# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
    candies.map { |candy| candy + extra_candies >= candies.max }
end

puts kids_with_candies([2,3,5,1,3], 3) # [true, true, true, false, true]
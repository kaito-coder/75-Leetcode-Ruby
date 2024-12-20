# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  return true if n.zero?

  flowerbed.each_with_index do |flower, i|
    next unless flower == 0 && (i == 0 || flowerbed[i - 1] == 0) && (i == flowerbed.length - 1 || flowerbed[i + 1] == 0)

    flowerbed[i] = 1
    n -= 1
    return true if n.zero?
  end
  n.zero?
end

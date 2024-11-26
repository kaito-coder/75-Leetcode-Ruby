def compress(chars)
  scan = 0
  write = 0
  length = chars.length

  while scan < length
    chars[write] = chars[scan]
    count = 0

    while scan < length && chars[scan] == chars[write]
      count += 1
      scan += 1
    end

    if count > 1
      count.to_s.each_char do |c|
        write += 1
        chars[write] = c
      end
    end

    write += 1
  end
  write
end

# Test
chars = %w[a a b b c c c]
puts compress(chars)

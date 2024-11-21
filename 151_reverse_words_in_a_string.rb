def reverse_words(s)
  words = s.split
  puts words
  i = 0
  j = words.length - 1

  while i < j
    words[i], words[j] = words[j], words[i]
    i += 1
    j -= 1
  end

  words.join(' ')
end

def merge_alternately(word1, word2)
    word1 = word1.split('')
    word2 = word2.split('')
    result = []
    
    max_length = [word1.length, word2.length].max
    
    max_length.times do |i|
      result << word1[i] if i < word1.length
      result << word2[i] if i < word2.length
    end
    
    result.join('')
end

puts merge_alternately('abc', 'pqr') # "apbqcr"
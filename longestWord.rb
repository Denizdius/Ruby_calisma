def LongestWord(sen)
  longest_word = ""
  sen.split.each do |word|
    if word.length > longest_word.length
        longest_word = word
    end
  end

  # code goes here
  return longest_word
         
end
   
# keep this function call here    
puts LongestWord(gets)
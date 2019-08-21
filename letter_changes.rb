def LetterChanges(str)

    0.upto(str.length-1) do |i|
        puts i
        str[i] = str[i].next
        if str[i] == 'a' || str[i] == 'e' || str[i] == 'o' || str[i] == 'u' ||  str[i] == 'i'
            str[i] = str[i].upcase
        end
    end

  # code goes here
  return str
end
   
# keep this function call here    
puts LetterChanges("ali")

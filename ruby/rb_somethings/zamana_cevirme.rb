def TimeConvert(num)
  saat = num / 60
  dakika = num % 60

  "#{saat}:#{dakika}"
end

puts TimeConvert(gets.to_i)
  

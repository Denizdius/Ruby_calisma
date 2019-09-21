def TimeConvert(num)

  saat = num / 60
  dakika = num % 60

    saat.to_s + ':' + dakika.to_s
         
end

puts TimeConvert(STDIN.gets)
  

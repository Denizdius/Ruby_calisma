def en_iyi_uclu
  a_değeri = (1..998)
  b_değeri = (1..998)
  c_değeri = (1..998)

  a_değeri.each do |a|
    b_değeri.each do |b|
      c_değeri.each do |c|
        if (a + b + c == 1000) and (a ** 2 + b ** 2 == c ** 2)
          puts "a = #{a}, b = #{b}, c = #{c}"
          return a * b * c
        end
      end
    end
  end
end

puts en_iyi_uclu
#başla
#tanım a değeri = 1..998
#tanım b değeri = 1..998
#tanım c değeri = 1..998
#her a değeri ;her b değeri ve her c değeri için 
#eğer toplamları 1000 e ulaşmış ve a uslu + b uslu = c uslu ise  
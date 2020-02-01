def pisagor?(a, b, c)
  a ** 2 + b ** 2 == c ** 2
end

def pisagor_finder(total_of)
  limit_for_c = total_of - 2
  limit_for_b = 0

  limit_for_c.downto(1) do |c|
    limit_for_b = limit_for_c - c
    limit_for_b.downto(1) do |b|
      a = total_of - (b + c)
      
      if pisagor?(a, b, c)
        return { a: a, b: b, c: c }
      end
    end
  end

  return { a: -1, b: -1, c: -1 }
end

result = pisagor_finder(100000)
if result[:a] != -1
  puts "a = #{result[:a]}, b = #{result[:b]}, c = #{result[:c]}"
else
  puts "Bu koşula uyan bir pisagor üçlüsü bulunmamaktadır!"
end

# def en_iyi_uclu
#   a_değeri = (1..998)
#   b_değeri = (1..998)
#   c_değeri = (1..998)

#   loop_counter = 0
#   a_değeri.each do |a|
#     b_değeri.each do |b|
#       c_değeri.each do |c|
#         loop_counter += 1
#         if (a + b + c == 1000) and (a ** 2 + b ** 2 == c ** 2)
#           puts "a = #{a}, b = #{b}, c = #{c}"
#           puts "#{loop_counter}"
#           return a * b * c
#         end
#       end
#     end
#   end
# end

# puts en_iyi_uclu

#başla
#tanım a değeri = 1..998
#tanım b değeri = 1..998
#tanım c değeri = 1..998
#her a değeri ;her b değeri ve her c değeri için 
#eğer toplamları 1000 e ulaşmış ve a uslu + b uslu = c uslu ise   
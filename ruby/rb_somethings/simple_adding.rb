def simpleAdding(num)
    i = 1
    toplam = 0
    (1..num).each do |i|
        toplam += i
    end

    num
end

puts simpleAdding(gets.to_i)
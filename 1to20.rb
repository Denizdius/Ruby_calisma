sayi = 200_000_000
bulundu = false

def divisible_by_one_to_twenty(number)
    1.upto(20) do |bolen|
        return false if number % bolen != 0
    end
    
    return true
end

until (bulundu)
    sayi += 1
    bulundu = true if divisible_by_one_to_twenty(sayi)
end

puts "Sayı = #{sayi}"



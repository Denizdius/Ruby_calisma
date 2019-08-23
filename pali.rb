en_buyuk = 1
carpan1 = 1
carpan2 = 1
999.downto(100) do |sayi1|
    999.downto(100) do |sayi2|
        carpim = sayi1 * sayi2
        if palindrom?(carpim)
            if (carpim > en_buyuk)
                en_buyuk = carpim
                carpan1 = sayi1
                carpan2 = sayi2
            end
        end
    end
end

puts "En büyük palindromik sayı = #{en_buyuk}"
puts "Çarpan 1 = #{carpan1}"
puts "Çarpan 2 = #{carpan2}"

def palindrom?(sayi)
    sayi.to_s == sayi.to_s.reverse
end

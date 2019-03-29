# ornek7.rb
print "İlk sayı: "
sayi1 = gets.to_i

print "İkinci sayı: "
sayi2 = gets.to_i

print "Yapmak istediğiniz işlem(+ - * /): "
islem = gets.chomp

sonuc = 0

if islem == "*"
  sonuc = sayi1 * sayi2
elsif islem == "+"
  sonuc = sayi1 + sayi2
elsif islem == "-"
  sonuc = (sayi1 - sayi2).abs
elsif islem == "/"
  sonuc = sayi1.to_f / sayi2
end

puts "İşlemin sonucu = #{sonuc}"







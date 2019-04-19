puts "Yeni bir şey yapacağız önce sen birkaç sayı gireceksen sonra o sayılarlara bir döngü üreteceğeiz"
sayilar = []
sayi = 0

while sayi != 'q'
  print "Sayı giriniz(Çıkmak için q): "
  sayi = gets.chomp
  sayilar.push(sayi.to_i) unless sayi == "q"
end

print "İşlem seç lo (+,*): "
islem = gets.chomp

#koşul ? doğruysa : yanlışsa
sonuc = (islem == "*" ? 1 : 0)

if islem == "*" || islem == "+"
  sayilar.each do |s|
    if islem == "*"
          sonuc *= s
    elsif islem == "+"
        sonuc += s
    end
  end
end

puts "İşlemin sonucu: #{sonuc}"
